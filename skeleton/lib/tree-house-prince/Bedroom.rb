require_relative "Scene.rb"

class Bedroom < Scene

  def bedroom_options(userSelection)
    case userSelection
    when /1/, /lie/, /down/, /cushion/, /sleep/
      puts "Something wonderful happens and the game ends here.\n"
      return 'finished'
    when /2/, /exit/, /leave/, /bedroom/
      puts "You walk back out to the fourth floor landing."
      return 'fourth_floor'
    else
      puts "That does not compute."
    end
  end


  def enter()

    puts """\n\nYou enter the royal bedroom and find a large floor cushion, but nothing else.  You feel rather sleepy...

    1. Lie down on the floor cushion.
    2. Exit the bedroom

    """
    print "> "

    userSelection = $stdin.gets.chomp.downcase()
    fork_in_the_road(userSelection)
  end

end
