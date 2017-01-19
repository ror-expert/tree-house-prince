require "tree-house-prince/Bedroom.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_bedroom_sleep()

    bedroom_test = Bedroom.new()
    userSelection = "sleep"
    assert_equal(bedroom_test.bedroom_options(userSelection), "finished")

  end

  def test_bedroom_house()

    bedroom_test = Bedroom.new()
    userSelection = "exit"
    assert_equal(bedroom_test.bedroom_options(userSelection), "fourth_floor")

  end

end
