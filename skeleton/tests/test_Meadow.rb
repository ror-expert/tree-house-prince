require "tree-house-prince/Meadow.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_meadow_river()

    meadow_test = Meadow.new()
    userSelection = "river"
    assert_equal(meadow_test.fork_in_the_road(userSelection), "river")

  end

  def test_meadow_house()

    meadow_test = Meadow.new()
    userSelection = "house"
    assert_equal(meadow_test.fork_in_the_road(userSelection), "front_door")

  end

end
