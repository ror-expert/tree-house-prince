require "tree-house-prince/SpiralStaircase.rb"
require "test/unit"

class TestCase < Test::Unit::TestCase

  def test_ground_floor()
    ground_floor_test = SpiralStaircase.new(0)
    assert_equal(ground_floor_test.floor_selector(0), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(1), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(2), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(3), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(4), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(5), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(6), 'meadow')
  end
  def test_first_floor()
    ground_floor_test = SpiralStaircase.new(1)
    assert_equal(ground_floor_test.floor_selector(0), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(1), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(2), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(3), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(4), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(5), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(6), 'meadow')
  end
  def test_second_floor()
    ground_floor_test = SpiralStaircase.new(2)
    assert_equal(ground_floor_test.floor_selector(0), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(1), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(2), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(3), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(4), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(5), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(6), 'meadow')
  end
  def test_third_floor()
    ground_floor_test = SpiralStaircase.new(3)
    assert_equal(ground_floor_test.floor_selector(0), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(1), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(2), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(3), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(4), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(5), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(6), 'meadow')
  end
  def test_fourth_floor()
    ground_floor_test = SpiralStaircase.new(4)
    assert_equal(ground_floor_test.floor_selector(0), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(1), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(2), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(3), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(4), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(5), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(6), 'meadow')
  end
  def test_fifth_floor()
    ground_floor_test = SpiralStaircase.new(5)
    assert_equal(ground_floor_test.floor_selector(0), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(1), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(2), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(3), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(4), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(5), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(6), 'meadow')
  end


end
