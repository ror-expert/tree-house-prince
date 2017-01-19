require "tree-house-prince/House.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_house()

    house_test = House.new()
    assert_equal(house_test.enter(), 'finished')

  end

end
