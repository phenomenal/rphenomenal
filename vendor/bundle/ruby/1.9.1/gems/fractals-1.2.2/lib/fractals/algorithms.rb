#--
# Copyright (c) 2009  Ryan Baxter
#++

module Fractals
  # A renderer's algorithm calculates the color index for complex coordinates
  # that lie outside of a fractal's set.
  #
  # <b>EscapeTime</b>::               The default algorithm for orbits fractals.
  #
  # <b>NormalizedIterationCount</b>:: Produces an image with less color banding
  #                                   than the Escape Time algorithm.
  # <br />
  # =Example:
  # mandelbrot = Mandelbrot.new<br />
  # mandelbrot.algorithm = <b>Algorithms::NormalizedIterationCount</b>
  module Algorithms
    #:stopdoc:
    EscapeTime = lambda do |fractal|
      (765 * fractal.last_iteration / fractal.max_iterations).abs
    end

    NormalizedIterationCount = lambda do |fractal|
      z = fractal.args[:z]**2 + fractal.c; fractal.last_iteration += 1
      z = z**2 + fractal.c; fractal.last_iteration += 1

      modulus = sqrt(fractal.args[:z].real**2 + fractal.args[:z].image**2).abs
      mu = fractal.last_iteration +
        log(2 * log(fractal.bailout)) - log(log(modulus)) / log(fractal.args[:p])

      (mu / fractal.max_iterations * 765).to_i
    end
    #:startdoc:
  end
end
