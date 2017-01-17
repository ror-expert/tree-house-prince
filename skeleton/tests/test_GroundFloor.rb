require "tree-house-prince/GroundFloor.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_ground_floor_staircase()

    ground_floor_test = GroundFloor.new()
    user_selection = "stairs"
    assert_equal(ground_floor_test.choice(user_selection), 'spiral_staircase')

  end

  def test_ground_floor_staircase()

    ground_floor_test = GroundFloor.new()
    user_selection = "door"
    assert_equal(ground_floor_test.choice(user_selection), 'meadow')

  end
end
