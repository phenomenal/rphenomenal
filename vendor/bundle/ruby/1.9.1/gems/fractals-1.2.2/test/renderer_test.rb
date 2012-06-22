require 'fractals'
require 'test/unit'

include Fractals

class MandelbrotTest < Test::Unit::TestCase
  def test_false_in_set?
    mandelbrot = Mandelbrot.new
    assert_equal(false, mandelbrot.in_set?(Complex(-5.0, -5.0)))
  end

  def test_true_in_set?
    mandelbrot = Mandelbrot.new
    assert_equal(true, mandelbrot.in_set?(Complex(0.0, 0.0)))
  end

  def test_where_is?
    mandelbrot = Mandelbrot.new
    assert_equal(Complex(-2.15, -1.5), mandelbrot.where_is?(0, 0))
  end
end
