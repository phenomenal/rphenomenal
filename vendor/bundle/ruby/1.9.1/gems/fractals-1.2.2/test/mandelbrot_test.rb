require 'fractals'
require 'test/unit'

include Fractals

class MandelbrotTest < Test::Unit::TestCase
  def setup
    mandelbrot = Mandelbrot.new
    mandelbrot.write
  end

  def teardown
    File.delete('fractal.png')
  end

  def test_file_size
    assert_equal(9687, File.size?('fractal.png'))
  end
end

