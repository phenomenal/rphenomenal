require 'fractals'
require 'test/unit'

include Fractals

class NewtonTest < Test::Unit::TestCase
  def setup
    newton = Newton.new
    newton.write
  end

  def teardown
    File.delete('fractal.png')
  end

  def test_file_size
    assert_equal(3970, File.size?('fractal.png'))
  end
end

