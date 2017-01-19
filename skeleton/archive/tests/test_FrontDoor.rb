require "tree-house-prince/Finished.rb"
require "test/unit"

class TestCase < Test::Unit::TestCase

  def test_front_door()

    front_door_test = FrontDoor.new()

    assert_equal(front_door_test.correct_answer, 'ground_floor')
    assert_equal(front_door_test.incorrect_answer, 'death')

    assert_equal(front_door_test.user_response_01("42"), 'ground_floor')
    assert_equal(front_door_test.user_response_01("Wrong Answer"), 'death')

    assert_equal(front_door_test.user_response_02("hotdog"), 'ground_floor')
    assert_equal(front_door_test.user_response_02("Wrong Answer"), 'death')

    assert_equal(front_door_test.user_response_03("manducare"), 'ground_floor')
    assert_equal(front_door_test.user_response_02("Wrong Answer"), 'death')

  end

end
