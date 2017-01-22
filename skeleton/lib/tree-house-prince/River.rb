require_relative "Scene.rb"

class River < Scene

  def river_choice(user_selection)
    @outcomes = {
      'live' => 'front_door',
      'die' => 'death'
    }

    case user_selection.to_s
    when /1/, /tree/, /house/
      @outcome = 'live'
      # puts "You go to the tree house."
      # puts "This is the $$$ scene option: #{@outcome}"
      return 'front_door'
    when /2/, /river/
      @outcome = 'die'
      # puts "You wade into the river."
      # puts "The strong current pulls you under and you drown."
      # puts "This is the $$$ scene option: #{@outcome}"
      return 'death'
    else
      puts "That does not compute."
    end

  end

  def enter()

		clear_screen()

    puts """
    You go to the river bank.  You feel rather thirsty and decide to have a drink.  As you take a few handfuls of fresh water, you realise that the river current is very strong.  It would be extremely dangerous to wade into the water.

    Your thirst quenched, you stand back up and look around.
    The eclectic tree house is in the centre of the meadow.
    The river is in front of you.

    What do you do?

    1. Go to the tree house.
    2. Wade into the river.

    """

    print "> "

    user_selection = $stdin.gets.chomp.downcase()

    river_choice(user_selection)

    # puts "This is the scene option: #{@outcome}"

    case @outcome
    when 'live'
      puts "You go to the front door of the tree house."
      return 'front_door'
    when 'die'
      puts "The strong current of the river pulls you under, and you drown."
      return 'death'
    else
      puts "Something clearly has gone wrong."
    end

  end
end

# testing = River.new()
# testing.enter()
