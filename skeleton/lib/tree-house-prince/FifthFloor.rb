require_relative "Scene.rb"
require_relative "SpiralStaircase.rb"

class FifthFloor < Scene

  def choice(user_selection)
    choosing = true
    while choosing == true
      case user_selection
      when /1/, /staircase/, /stairs/, /stair/
        puts "You decide to take the stairs."
        return 'spiral_staircase_5'

        choosing = false
      when /2/, /enter/, /study/, /meet/, /prince/
        puts "You decide to enter the royal study."
        choosing = false
        return 'study'
      else
        puts "I don't understand what you want.  Try again."
      end
    end
  end

  def enter()

		# clear_screen()

    puts """You are on the fifth floor.  You have the following choices:

    1. Take the spiral staircase.
    2. Enter the royal study, where you might meet someone very special.

    """

    print "> "

    user_selection = $stdin.gets.chomp.downcase()
    choice(user_selection)

  end
end
