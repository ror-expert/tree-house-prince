require "/home/alexander/Dropbox/DevOps/Github_Projects/tree-house-prince/skeleton/lib/tree-house-prince/SpiralStaircase.rb"
require "test/unit"

class TestName < Test::Unit::TestCase

  def floor_selector_test_ground()
    test_ground_floor  = SpiralStaircase.new(0)
    assert_equal(test_ground_floor.floor_selector(0, "ground"), 'ground_floor')
    assert_equal(test_ground_floor.floor_selector(1, "ground"), 'ground_floor')
    assert_equal(test_ground_floor.floor_selector(2, "ground"), 'ground_floor')
  end

  def floor_selector_test_first()
    test_ground_floor  = SpiralStaircase.new(1)
    assert_equal(test_ground_floor.floor_selector(0, "first"), 'first_floor')
    assert_equal(test_ground_floor.floor_selector(1, "ground"), 'ground_floor')
    assert_equal(test_ground_floor.floor_selector(2, "ground"), 'ground_floor')
  end

end

# testicles = TestName.new()
# testicles.floor_selector_test_ground()
# testicles.floor_selector_test_first()
