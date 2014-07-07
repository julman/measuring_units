gem 'minitest', '~> 4.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/measuring_unit.rb'

class Measuring_Unit_Test < MiniTest::Unit::TestCase

  def song
    @song = ::BottlesSong.new
  end

  def teardown
    @song = nil
  end

  def test_factory_cups
    expected = "1.5 cups"
    assert_equal expected, Measuring_Unit_Factory.measuring_unit(72).to_s
  end

  def test_factory_cup
    expected = "1.0 cup"
    assert_equal expected, Measuring_Unit_Factory.measuring_unit(48).to_s
  end

  def test_factory_teaspoon
    expected = "1.0 tsp"
    assert_equal expected, Measuring_Unit_Factory.measuring_unit(1).to_s
  end

  def test_factory_tablespoon
    expected = "1.0 tbs"
    assert_equal expected, Measuring_Unit_Factory.measuring_unit(3).to_s
  end

  def test_to_teaspoon
    expected = 72
    assert_equal expected, Tablespoon.new(expected).to_teaspoon()
  end

end
