require "tree-house-prince/Finished.rb"
require "test/unit"

class TestCase < Test::Unit::TestCase

  def test_front_door()

    front_door_test = FrontDoor.new()

    assert_equal(front_door_test.correct_answer, 'spiral_staircase')
    assert_equal(front_door_test.incorrect_answer, 'death')

    assert_equal(front_door_test.user_response_01("42"), 'spiral_staircase')
    assert_equal(front_door_test.user_response_01("Wrong Answer"), 'death')

    assert_equal(front_door_test.user_response_02("hotdog"), 'spiral_staircase')
    assert_equal(front_door_test.user_response_02("Wrong Answer"), 'death')

    assert_equal(front_door_test.user_response_03("manducare"), 'spiral_staircase')
    assert_equal(front_door_test.user_response_02("Wrong Answer"), 'death')

  end

end
