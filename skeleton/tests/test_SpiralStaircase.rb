require "tree-house-prince/SpiralStaircase.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_spiral_staircase_ground_floor()

    spiral_staircase_test_ground = SpiralStaircase.new("ground")
    assert_equal(spiral_staircase_test_ground.floor_selector(0), 'ground_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(1), 'ground_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(2), 'ground_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(3), 'ground_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(4), 'ground_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(5), 'ground_floor')

  end

  def test_spiral_staircase_first_floor()

    spiral_staircase_test_ground = SpiralStaircase.new("first")
    assert_equal(spiral_staircase_test_ground.floor_selector(0), 'first_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(1), 'first_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(2), 'first_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(3), 'first_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(4), 'first_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(5), 'first_floor')

  end

  def test_spiral_staircase_second_floor()

    spiral_staircase_test_ground = SpiralStaircase.new("second")
    assert_equal(spiral_staircase_test_ground.floor_selector(0), 'second_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(1), 'second_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(2), 'second_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(3), 'second_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(4), 'second_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(5), 'second_floor')

  end

  def test_spiral_staircase_third_floor()

    spiral_staircase_test_ground = SpiralStaircase.new("third")
    assert_equal(spiral_staircase_test_ground.floor_selector(0), 'third_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(1), 'third_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(2), 'third_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(3), 'third_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(4), 'third_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(5), 'third_floor')

  end

  def test_spiral_staircase_fourth_floor()

    spiral_staircase_test_ground = SpiralStaircase.new("fourth")
    assert_equal(spiral_staircase_test_ground.floor_selector(0), 'fourth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(1), 'fourth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(2), 'fourth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(3), 'fourth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(4), 'fourth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(5), 'fourth_floor')

  end

  def test_spiral_staircase_fifth_floor()

    spiral_staircase_test_ground = SpiralStaircase.new("fifth")
    assert_equal(spiral_staircase_test_ground.floor_selector(0), 'fifth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(1), 'fifth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(2), 'fifth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(3), 'fifth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(4), 'fifth_floor')
    assert_equal(spiral_staircase_test_ground.floor_selector(5), 'fifth_floor')

  end

end
