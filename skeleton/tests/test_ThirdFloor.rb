require "tree-house-prince/ThirdFloor.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_third_floor_staircase()

    third_floor_test = ThirdFloor.new()
    user_selection = "stairs"
    assert_equal(third_floor_test.choice(user_selection), 'spiral_staircase_3')

  end

  def test_third_floor_staircase()

    third_floor_test = ThirdFloor.new()
    user_selection = "library"
    assert_equal(third_floor_test.choice(user_selection), 'library')

  end
end
