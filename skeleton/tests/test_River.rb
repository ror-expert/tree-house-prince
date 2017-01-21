require "tree-house-prince/River.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_river()

    river_test = River.new()
    assert_equal(river_test.river_choice(1), 'front_door')
    assert_equal(river_test.river_choice(2), 'death')

  end

end
