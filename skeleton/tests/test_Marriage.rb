require "tree-house-prince/Marriage.rb"
require "test/unit"

class TestCase < Test::Unit::TestCase

  def test_marriage()

    marriage_test = Marriage.new()
    assert_equal(marriage_test.ring_translation("my queen"), 'success')
    assert_equal(marriage_test.ring_translation("foobar"), 'try_again')
    assert_equal(marriage_test.ring_translation("give up"), 'failure')

  end
end
