require_relative "Scene.rb"
require_relative "SpiralStaircase.rb"

class FourthFloor < Scene

  def choice(user_selection)
    choosing = true
    while choosing == true
      case user_selection
      when /1/, /staircase/, /stairs/, /stair/
        puts "You decide to take the stairs."
        return 'spiral_staircase_4'

        choosing = false
      when /2/, /enter/, /bedroom/, /rest/, /sleep/
        puts "You enter the royal bedroom."
        choosing = false
        return 'bedroom'
      else
        puts "I don't understand what you want.  Try again."
      end
    end
  end

  def enter()

    puts """You are on the fourth floor.  You have the following choices:

    1. Take the spiral staircase.
    2. Enter the royal bedroom, where you can get some rest or even sleep, if you feel so inclined.

    """

    print "> "

    user_selection = $stdin.gets.chomp.downcase()
    choice(user_selection)

  end
end
