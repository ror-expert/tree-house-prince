require_relative "Scene.rb"
require_relative "SpiralStaircase.rb"

class SecondFloor < Scene

  def choice(user_selection)
    choosing = true
    while choosing == true
      case user_selection
      when /1/, /staircase/, /stairs/, /stair/
        puts "You decide to take the stairs."
        return 'spiral_staircase_2'

        choosing = false
      when /2/, /enter/, /kitchen/, /sandwich/
        puts "You enter the kitchen."
        choosing = false
        return 'kitchen'
      else
        puts "I don't understand what you want.  Try again."
      end
    end
  end

  def enter()

    puts """You are on the second floor.  You have the following choices:

    1. Take the spiral staircase.
    2. Enter the kitchen, where you can get a sandwich.

    """

    print "> "

    user_selection = $stdin.gets.chomp.downcase()
    choice(user_selection)

  end
end
