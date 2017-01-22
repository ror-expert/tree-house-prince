require "tree-house-prince/Bedroom.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def test_bedroom_sleep()

    bedroom_test = Bedroom.new()
    user_selection = "sleep"
    assert_equal(bedroom_test.bedroom_options(user_selection), "marriage")

  end

  def test_bedroom_house()

    bedroom_test = Bedroom.new()
    user_selection = "exit"
    assert_equal(bedroom_test.bedroom_options(user_selection), "fourth_floor")

  end

end
