#--
# Copyright (c) 2009  Ryan Baxter
#++

module Fractals
  # Each themes returns an array of RGB values [R, G, B] for the provided color
  # index.
  #
  # <b>Fire</b>::   The default theme.  Themes::Fire produces bright fiery
  #                 fractals.
  # <b>Water</b>::  Deep blues and greens.
  # <b>Winter</b>:: Lots of blue. Looks best with set_color = [255, 255, 255].
  # <b>None</b>::   Coordinates outside the fractal set will appear white in
  #                 color.
  # <br />
  # =Example:
  # mandelbrot = Mandelbrot.new<br />
  # mandelbrot.theme = <b>Themes::Winter</b>
  module Themes
    #:stopdoc:
    Fire = lambda do |index|
      case
        when index >= 510 then return [255, 255, index % 255]
        when index >= 255 then return [255, index % 255, 0]
        else return [index % 255, 0, 0]
      end
    end

    Water = lambda do |index|
      case
        when index >= 510 then return [index % 255, 255 - (index % 255), 0]
        when index >= 255 then return [0, index - 255, 255 - (index - 255)]
        else return [0, 0, index]
      end
    end

    Winter = lambda do |index|
      case
        when index >= 510 then return [0, 255 % index, 255]
        when index >= 255 then return [0, index % 255, 255]
        else return [0, 0, index % 255]
      end
    end

    None = lambda { |index| return [255, 255, 255] }
    #:startdoc:
  end
end
