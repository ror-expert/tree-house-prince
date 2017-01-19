require "tree-house-prince/Introduction.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_introduction()

    introduction_test = Introduction.new()
    assert_equal(introduction_test.enter(), 'meadow')

  end

end
