require_relative "Scene.rb"

class Finished < Scene
  def enter()

		# clear_screen()

    puts "Thanks for playing!"

    puts """
                      |         
                      |        .-~~-.
                      |      ,',-''-.'.
                      |     | |      | |
                      |     | |   .-'| |.
                      |     '. `,',-' ,'.'.
                      |       `| |_,-'   | |
                      |        | |       | |
                      |        '. `-._,-' .'
                      |          `-.___,-'

                      """

    return 'game_complete'
    exit(1)
  end
end
