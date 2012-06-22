require 'fractals'
require 'test/unit'

include Fractals

class JuliaTest < Test::Unit::TestCase
  def setup
    julia = Julia.new
    julia.write
  end

  def teardown
    File.delete('fractal.png')
  end

  def test_file_size
    assert_equal(13057, File.size?('fractal.png'))
  end
end

