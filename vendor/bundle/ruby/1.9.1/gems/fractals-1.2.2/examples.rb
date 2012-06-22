# This file contains a few examples.  View the source code for more information.

require 'rubygems'
require 'fractals'
# require 'RMagick'

include Fractals

# Just as version 1.0.0, creating a fractal is as easy as:
mandelbrot = Mandelbrot.new
# mandelbrot.write

# Or...
# Mandelbrot.new.write


# Each of the expression's arguments can be modified using a Hash.
newton = Newton.new
newton.args = {:a => -0.5, :pz => lambda { |z| z**3 - 1 }}
# newton.write('newton.png')


# New orbits fractals can be constructed by either inheriting from Fractal or
# instantiating it directly.  The complex number args[:c] is added to the
# argument Hash during iteration.
fractal = Fractal.new(Complex(0.0, 0.0), {:p => 2}) do |args|
                                                      args[:z] = args[:z]**args[:p] +
                                                        Math.sqrt(args[:c])
                                                    end
# fractal.write('new.png')


# Every property has a default value.  In this example I've chosen to override
# quite a few of them.  The result produces an image that looks similar to a
# snowflake.
snowflakes = Julia.new(Complex(-0.3007, 0.6601))
snowflakes.bailout = 5
snowflakes.max_iterations = 100
snowflakes.algorithm = Algorithms::NormalizedIterationCount
snowflakes.theme = Themes::Winter
snowflakes.set_color = [255, 255, 255]
# snowflakes.write('snowflakes.png')


# Here I'm creating an animated fractal using RMagick and the RMagickRenderer's
# to_blob method.  This is both CPU and memory intensive so act accordingly.
# This is about as complicated as it gets.
feigenbaum = Mandelbrot.new(Complex(-0.1528, 1.0397))
feigenbaum.max_iterations = 100
feigenbaum.renderer = Renderers::RMagickRenderer
feigenbaum.width = 150
feigenbaum.height = 150
feigenbaum.magnification = 25
feigenbaum.algorithm = Algorithms::NormalizedIterationCount
feigenbaum.theme = Themes::Water

image_list = Magick::ImageList.new
image_list.delay = 100
image_list.iterations = 1

(0...50).each { |i|
  feigenbaum.magnification += (i**2)
  # image_list << Magick::Image.from_blob(feigenbaum.to_blob('gif'))[0]
}

# image_list.write('feigenbaum.gif')


# Some interesting fractals:

# The Mandelbrot "satellite".
satellite = Mandelbrot.new(Complex(-0.743643135, 0.131825963))
satellite.max_iterations = 1500
satellite.magnification = 200000
satellite.renderer = Renderers::RMagickRenderer
# satellite.write('satellite.jpg')

# The Feigenbaum Point.
feigenbaum = Mandelbrot.new(Complex(-0.1528, 1.0397))
feigenbaum.magnification = 25
feigenbaum.algorithm = Algorithms::NormalizedIterationCount
feigenbaum.theme = Themes::Water
# feigenbaum.write('feigenbaum.png')

# The Misiurewicz Point.
misiurewicz = Mandelbrot.new(Complex(-0.1011, 0.9563))
misiurewicz.magnification = 50
misiurewicz.algorithm = Algorithms::NormalizedIterationCount
# misiurewicz.write('misiurewicz.png')

# Seahorse Valley.
seahorse_valley = Mandelbrot.new(Complex(-0.8759, 0.2046))
seahorse_valley.magnification = 6
seahorse_valley.algorithm = Algorithms::NormalizedIterationCount
seahorse_valley.theme = Themes::Water
# seahorse_valley.write('seahorse_valley.png')

# The classic Burning Ship.
burning_ship = BurningShip.new(Complex(-1.75, -0.04))
burning_ship.magnification = 32
# burning_ship.write('burning_ship.png')
