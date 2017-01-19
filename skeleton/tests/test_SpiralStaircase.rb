require "tree-house-prince/SpiralStaircase.rb"
require "test/unit"

class TestCase < Test::Unit::TestCase

  def test_ground_floor()
    ground_floor_test = SpiralStaircase.new(0)
    assert_equal(ground_floor_test.floor_selector(0, "ground"), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(0, "first"), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(0, "second"), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(0, "third"), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(0, "fourth"), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(0, "fifth"), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(0, "leave"), 'meadow')
  end

  def test_first_floor()
    ground_floor_test = SpiralStaircase.new(1)
    assert_equal(ground_floor_test.floor_selector(1, "ground"), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(1, "first"), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(1, "second"), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(1, "third"), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(1, "fourth"), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(1, "fifth"), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(1, "leave"), 'meadow')
  end
  def test_second_floor()
    ground_floor_test = SpiralStaircase.new(2)
    assert_equal(ground_floor_test.floor_selector(2, "ground"), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(2, "first"), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(2, "second"), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(2, "third"), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(2, "fourth"), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(2, "fifth"), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(2, "leave"), 'meadow')
  end
  def test_third_floor()
    ground_floor_test = SpiralStaircase.new(3)
    assert_equal(ground_floor_test.floor_selector(3, "ground"), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(3, "first"), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(3, "second"), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(3, "third"), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(3, "fourth"), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(3, "fifth"), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(3, "leave"), 'meadow')
  end
  def test_fourth_floor()
    ground_floor_test = SpiralStaircase.new(4)
    assert_equal(ground_floor_test.floor_selector(4, "ground"), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(4, "first"), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(4, "second"), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(4, "third"), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(4, "fourth"), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(4, "fifth"), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(4, "leave"), 'meadow')
  end
  def test_fifth_floor()
    ground_floor_test = SpiralStaircase.new(5)
    assert_equal(ground_floor_test.floor_selector(5, "ground"), 'ground_floor')
    assert_equal(ground_floor_test.floor_selector(5, "first"), 'first_floor')
    assert_equal(ground_floor_test.floor_selector(5, "second"), 'second_floor')
    assert_equal(ground_floor_test.floor_selector(5, "third"), 'third_floor')
    assert_equal(ground_floor_test.floor_selector(5, "fourth"), 'fourth_floor')
    assert_equal(ground_floor_test.floor_selector(5, "fifth"), 'fifth_floor')
    assert_equal(ground_floor_test.floor_selector(5, "leave"), 'meadow')
  end

end
