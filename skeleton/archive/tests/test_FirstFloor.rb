require "tree-house-prince/FirstFloor.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_first_floor_staircase()

    first_floor_test = FirstFloor.new()
    user_selection = "stairs"
    assert_equal(first_floor_test.choice(user_selection), 'spiral_staircase_1')

  end

  def test_first_floor_staircase()

    first_floor_test = FirstFloor.new()
    user_selection = "machine"
    assert_equal(first_floor_test.choice(user_selection), 'machine_room')

  end
end
