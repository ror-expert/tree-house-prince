require "tree-house-prince/FifthFloor.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_fifth_floor_staircase()

    fifth_floor_test = FifthFloor.new()
    user_selection = "stairs"
    assert_equal(fifth_floor_test.choice(user_selection), 'spiral_staircase_5')

  end

  def test_fifth_floor_staircase()

    fifth_floor_test = FifthFloor.new()
    user_selection = "study"
    assert_equal(fifth_floor_test.choice(user_selection), 'study')

  end
end
