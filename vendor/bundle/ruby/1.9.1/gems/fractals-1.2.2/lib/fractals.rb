# A library for creating fractals in the Ruby programming language.
# Copyright (c) 2009  Ryan Baxter

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

require 'complex'

require 'fractals/algorithms'
require 'fractals/renderers'
require 'fractals/themes'

# The root module of the Fractals namespace.
#
# =Example:
# require 'rubygems'<br />
# require 'fractals'<br />
#
# include <b>Fractals</b><br /><br />
module Fractals
  include Math

  # The Fractal base class.
  class Fractal < Renderers::Base
    # The complex number seed.
    attr_accessor :c
    # A Hash of arguments used in the fractal's expression.
    attr_accessor :args
    # The fractal's expression as a block.
    attr_accessor :expression

    acts_as_renderer Renderers::ChunkyPNGRenderer

    # Sets the default property values.
    def initialize(c, args, &expression)
      @c, @args, @expression = c, args, expression
      super()
    end

    # Iterates the fractal's expression <b>n</b> times yielding the iteration
    # number and result.
    def iterate(n)
      @args[:z] = @args[:c]
      n.times do |i|
        @expression.call(@args)
        yield i, @args[:z]
      end
    end
  end

  # Michael Michelitsch's Burning Ship fractal.
  class BurningShip < Fractal
    def initialize(c=Complex(-0.3, -0.5))
      super(c, {:p => 2}) do |args|
                            args[:z] = (args[:z].real.abs + sqrt(-1) *
                              args[:z].image.abs)**args[:p] + args[:c]
                          end
    end
  end

  # The Julia set fractal.
  class Julia < Fractal
    def initialize(c=Complex(0.36, 0.1))
      super(c, {:p => 2}) do |args|
                            args[:z] = args[:z]**args[:p] + c
                          end
    end
  end

  # Benoît Mandelbrot's Mandelbrot set fractal.
  class Mandelbrot < Fractal
    def initialize(c=Complex(-0.65, 0.0))
      super(c, {:z => 0, :p => 2})  do |args|
                                      args[:z] = args[:z]**args[:p] + args[:c]
                                    end
    end
  end

  # The Newton fractal.
  class Newton < Fractal
    def initialize(c=Complex(0.0, 0.0))
      super(c, {:a => 1, :pz => lambda { |z| z**3 - 1 }}) do |args|
                                                            dx_pz = derivative(0.0001) { |x| args[:pz].call(x) }
                                                            args[:z] = args[:z] - args[:a] *
                                                              (args[:pz].call(args[:z]) / (dx_pz.call(args[:z])))
                                                          end
    end

    private
    def derivative(dx)
      lambda { |x| (yield(x + dx) - yield(x)) / dx }
    end
  end
end

