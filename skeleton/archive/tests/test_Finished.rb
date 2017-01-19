require "tree-house-prince/FrontDoor.rb"
require "test/unit"

class TestCase < Test::Unit::TestCase

  def test_finished()

    finished_test = Finished.new()
    assert_equal(finished_test.enter(), 'game_complete')

  end

end
