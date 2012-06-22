#--
# Copyright (c) 2009  Ryan Baxter
#++

module Fractals
  # Rendering modules for the PNG and RMagick libraries and JRuby.
  module Renderers
    begin; require 'rubygems'; rescue LoadError; end

    # Inherited by Fractal, Renderers::Base includes traits common to each of
    # the rendering modules.
    class Base
      # The number that determines if an iteration is approaching inifinity.
      attr_accessor :bailout
      # The maximum number of iterations to perform on an expression.
      attr_accessor :max_iterations
      # The last iteration number of a complex coordinate.  Determined by the
      # in_set? method.
      attr_accessor :last_iteration
      # The renderer's coloring algorithm.
      attr_accessor :algorithm
      # The width of the fractal image.
      attr_accessor :width
      # The height of the fractal image.
      attr_accessor :height
      # The magnification level of the fractal in powers of 100.
      attr_accessor :magnification
      # The coloring theme applied to complex coordinates that lie outside of
      # the fractal set.
      attr_accessor :theme
      # The color of complex coordinates inside the fractal set.  Expects an
      # array of RGB values [R, G, B].
      attr_accessor :set_color

      # Sets the default property values.
      def initialize(bailout=2, max_iterations=50, algorithm=Algorithms::EscapeTime)
        @bailout, @max_iterations = bailout, max_iterations
        @algorithm = algorithm
        @width, @height = 300, 300
        @magnification = 1.0
        @theme, @set_color = Themes::Fire, [0, 0, 0]
      end

      # Determines if a complex coordinate lies within the fractal's set.
      def in_set?(c)
        @args[:c] = c
        iterate(@max_iterations) do |i, z|
          if z.abs > @bailout then
            @last_iteration = i
            return false
          end
        end
        return true
      end

      # Loops through each x, y value pair yielding the pair and its RGB color
      # value as an array [R, G, B].
      def render
        (0...@width).each do |x|
          (0...@height).each do |y|
            if !in_set?(where_is?(x, y)) then
              yield x, y, @theme.call(@algorithm.call(self))
            else
              yield x, y, @set_color
            end
          end
        end
      end

      # Extends the Renderers::Base class with the provided module.
      #
      # =Example:
      # mandelbrot = Mandelbrot.new<br />
      # mandelbrot.<b>renderer =</b> Renderers::RMagickRenderer
      def renderer=(renderer)
        self.extend renderer
      end

      # Includes the provided module.  Use the renderer= method for setting the
      # renderer at runtime.
      def self.acts_as_renderer(renderer)
        include renderer
      end

      # Determines the location of an x, y value pair on the complex coordinate
      # plane.
      def where_is?(x, y)
        Complex(@c.real - (@width / 2 * scale) + (x * scale),
                  @c.image - (@height / 2 * scale) + (y * scale))
      end

      private
      def scale
        0.01 / @magnification
      end
    end

    # Renders fractals using the ChunkyPNG library.  ChunkyPNG is the default
    # renderer.
    module ChunkyPNGRenderer
      require 'chunky_png'

      # Returns the fractal image as a BLOB.
      def to_blob()
        canvas = ChunkyPNG::Canvas.new(@width, @height, Array.new(@width * @height))
        render do |x, y, color|
          canvas[x, y] = ChunkyPNG::Color.rgb(*color)
        end

        canvas.to_blob
      end

      # Writes the image to the specifiec file path.
      def write(file_path='fractal.png')
        File.open(file_path, 'wb') { |file| file.write(to_blob) }
      end
    end

    # Renders fractals using the PNG library.
    module PNGRenderer
      begin; require 'png'; rescue LoadError; end

      # Returns the fractal image as a BLOB.
      def to_blob()
        canvas = PNG::Canvas.new(@width, @height)
        render do |x, y, color|
          canvas[x, (y - @height).abs - 1] = PNG::Color.new(color[0], color[1], color[2], 255)
        end

        PNG.new(canvas).to_blob
      end

      # Writes the image to the specifiec file path.
      def write(file_path='fractal.png')
        File.open(file_path, 'wb') { |file| file.write(to_blob) }
      end
    end

    # Renders fractals using the RMagick library.
    module RMagickRenderer
      begin; require 'RMagick'; rescue LoadError; end

      # Returns the fractal image as a BLOB of the specified file format.
      #
      # =Example:
      # mandelbrot = Mandelbrot.new<br />
      # mandelbrot.renderer = Renderers::RMagickRenderer<br />
      # blob = mandelbrot.<b>to_blob('jpg')</b>
      def to_blob(file_format)
        image = Magick::Image.new(@width, @height)
        render do |x, y, color|
          image.pixel_color(x, y, "rgb(#{color.join(',')})")
        end

        image.to_blob { self.format = file_format; self.quality = 100 }
      end

      # Writes the image to the specified file path.
      def write(file_path='fractal.png')
        File.open(file_path, 'wb') do |file|
          file.write(to_blob(file_path.split('.').last))
        end
      end
    end

    # Renders fractals using native Java libraries.
    module JRubyRenderer
      begin; include Java; rescue NameError; end

      # Writes the image to the specified file path.
      def write(file_path='fractal.png')
        import java.awt.image.BufferedImage
        import javax.imageio.ImageIO

        buffered_image = BufferedImage.new(@width, @height, BufferedImage::TYPE_INT_RGB)
        render do |x, y, color|
          buffered_image.setRGB(x, y, to_rgb(color))
        end

        ImageIO.write(buffered_image, file_path.split('.').last, java.io.File.new(file_path))
      end

      private
      def to_rgb(color)
        (color[0] << 16) + (color[1] << 8) + color[2]
      end
    end
  end
end

