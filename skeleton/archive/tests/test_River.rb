require "tree-house-prince/River.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_river()

    river_test = River.new()
    assert_equal(river_test.enter(), 'front_door')

  end

end
