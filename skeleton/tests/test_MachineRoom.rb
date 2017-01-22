require "tree-house-prince/MachineRoom.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_machine_room()

    machine_room_test = MachineRoom.new()
    assert_equal(machine_room_test.enter(), 'first_floor')
  end

end
