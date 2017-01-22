require_relative "Scene.rb"
require_relative "SpiralStaircase.rb"

class ThirdFloor < Scene

  def choice(user_selection)
    choosing = true
    while choosing == true
      case user_selection
      when /1/, /staircase/, /stairs/, /stair/
        puts "You decide to take the stairs."
        return 'spiral_staircase_3'

        choosing = false
      when /2/, /enter/, /library/, /books/
        puts "You enter the library."
        choosing = false
        return 'library'
      else
        puts "I don't understand what you want.  Try again."
      end
    end
  end

  def enter()

		# clear_screen()

    puts """You are on the third floor.  You have the following choices:

    1. Take the spiral staircase.
    2. Enter the library, where you can meet some talkative books.

    """

    print "> "

    user_selection = $stdin.gets.chomp.downcase()
    choice(user_selection)

  end
end
