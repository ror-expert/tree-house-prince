require_relative "Scene.rb"
require_relative "SpiralStaircase.rb"

class GroundFloor < Scene

  def choice(user_selection)
    choosing = true
    while choosing == true
      case user_selection
      when /staircase/, /stairs/, /stair/
        puts "You decide to take the stairs."
        current_floor = 0
        stairs = SpiralStaircase.new()
        stairs.enter()

        choosing = false
      when /door/, /exit/, /walk/, /out/
        puts "You walk out the front door and don't stop until you reach the end of the meadow."
        choosing = false
        return 'meadow'
      else
        puts "I don't understand what you want.  Try again."
      end
    end
  end

  def enter()

    """You are on the ground floor.  You have the following choices:

    1. Take the spiral staircase.
    2. Walk out the front door.

    """

    print "> "

    user_selection = $stdin.gets.chomp.downcase()
    choice(user_selection)

  end
end
