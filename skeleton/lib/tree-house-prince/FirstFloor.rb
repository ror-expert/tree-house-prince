require_relative "Scene.rb"
require_relative "SpiralStaircase.rb"

class FirstFloor < Scene

  def choice(user_selection)
    choosing = true
    while choosing == true
      case user_selection
      when /1/, /staircase/, /stairs/, /stair/
        puts "You decide to take the stairs."
        return 'spiral_staircase_1'
        choosing = false
      when /2/, /enter/, /machine/, /room/
        puts "You enter the machine room."
        choosing = false
        return 'machine_room'
      else
        puts "I don't understand what you want.  Try again."
      end
    end
  end

  def enter()

    puts """You are on the first floor.  You have the following choices:

    1. Take the spiral staircase.
    2. Enter the machine room, where you can see some interesting gadgets.

    """

    print "> "

    user_selection = $stdin.gets.chomp.downcase()
    choice(user_selection)

  end
end
