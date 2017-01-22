require "tree-house-prince/SecondFloor.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_second_floor_staircase()

    second_floor_test = SecondFloor.new()
    user_selection = "stairs"
    assert_equal(second_floor_test.choice(user_selection), 'spiral_staircase_2')

  end

  def test_second_floor_staircase()

    second_floor_test = SecondFloor.new()
    user_selection = "kitchen"
    assert_equal(second_floor_test.choice(user_selection), 'kitchen')

  end
end
