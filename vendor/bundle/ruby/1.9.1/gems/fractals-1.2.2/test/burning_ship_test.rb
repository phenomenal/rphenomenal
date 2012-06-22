require 'fractals'
require 'test/unit'

include Fractals

class BurningShipTest < Test::Unit::TestCase
  def setup
    burning_ship = BurningShip.new
    burning_ship.write
  end

  def teardown
    File.delete('fractal.png')
  end

  def test_file_size
    assert_equal(10418, File.size?('fractal.png'))
  end
end

