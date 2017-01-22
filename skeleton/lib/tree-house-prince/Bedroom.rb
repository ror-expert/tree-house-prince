require_relative "Scene.rb"
require_relative "Marriage.rb"

class Bedroom < Scene

  def bedroom_options(user_selection)

    @selection = "blank"

    @exit = {
      'marry' => 'marriage',
      'leave' => 'fourth_floor'
    }

    case user_selection
    when /1/, /lie/, /down/, /cushion/, /sleep/
      puts "You lie down on the floor cushion and fall asleep.\n"
      @selection = "marry"
      return 'marriage'
    when /2/, /exit/, /leave/, /bedroom/
      puts "You walk back out to the fourth floor landing."
      @selection = "leave"
      return 'fourth_floor'
    else
      puts "That does not compute."
    end
  end


  def enter()

    clear_screen()

    puts """
           _      ()              ()      _
          / \     ||______________||     / \
         /___\    |                |    /___\
           |      |      ~@@~      |      |
          (_)     |_______  _______|     (_)
       ___/_\___  {_______}{_______}  ___/_\___
        |__~__|   %%%%%%%%%%%%%%%%%%   |__~__|
     ___|_____|__%%%%%%%%%%%%%%%%%%%%__|_____|___
        |     | %%%%%%%%%%%%%%%%%%%%%% |     |
         `=====%%%%%%%%%%%%%%%%%%%%%%%%=====`
        `=====%%%%%%%%%%%%%%%%%%%%%%%%%%=====`
       `=====%%%%%%%%%%%%%%%%%%%%%%%%%%%%=====`
      `=====/||||||||||||||||||||||||||||\=====`
     `======||||||||||||||||||||||||||||||======`
    `=======|||||||||||||||||||||||||||lc|=======`
   `==============================================`
  `================================================`
 `==================================================`
`====================================================`
    """

    puts """\n\nYou enter the royal bedroom and find a large floor cushion, but nothing else.  You feel rather sleepy...

    1. Lie down on the floor cushion.
    2. Exit the bedroom

    """
    print "> "

    user_selection = $stdin.gets.chomp.downcase()

    bedroom_options(user_selection)

    case @selection
    when "marry"
      # puts "you have chosen this: " + @exit['marry']
      return @exit['marry']
    when "leave"
      # puts "you have chosen that: " + @exit['leave']
      return @exit['leave']

    end
  end

end
