require "tree-house-prince/FourthFloor.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_fourth_floor_staircase()

    fourth_floor_test = FourthFloor.new()
    user_selection = "stairs"
    assert_equal(fourth_floor_test.choice(user_selection), 'spiral_staircase_4')

  end

  def test_fourth_floor_staircase()

    fourth_floor_test = FourthFloor.new()
    user_selection = "bedroom"
    assert_equal(fourth_floor_test.choice(user_selection), 'bedroom')

  end
end
