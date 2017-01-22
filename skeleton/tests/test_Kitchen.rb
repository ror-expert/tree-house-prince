require "tree-house-prince/Kitchen.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_kitchen()

    kitchen_test = Kitchen.new()
    assert_equal(kitchen_test.sandwich_selection("make me a sandwich"), 'try_again')
    assert_equal(kitchen_test.sandwich_selection("sudo make me a sandwich"), 'success')
    assert_equal(kitchen_test.sandwich_selection("give up"), 'failure')
  end

end
