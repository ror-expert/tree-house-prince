require "tree-house-prince/Kitchen.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_kitchen()

    kitchen_test = Kitchen.new()
    assert_equal(kitchen_test.enter(), 'second_floor')
  end

end
