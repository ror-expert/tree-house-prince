require "tree-house-prince/Death.rb"
require "test/unit"

class TestCase < Test::Unit::TestCase

  def test_death()

    death_test = Death.new()
    assert_equal(death_test.enter(), 'dead')

  end

end
