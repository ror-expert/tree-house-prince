require_relative "Scene.rb"

class FrontDoor < Scene

  def correct_answer()
    puts "\n\nThat is correct!"
    puts "The door opens and the spider scuttles back into the doorframe."
    puts "You walk through.\n\n"
    return 'ground_floor'
  end

  def incorrect_answer()
    puts "\nWrong answer!"
    puts "The spider bites your hand and injects you with venom."
    puts "You immediately collapse and die.\n"
    return 'death'
  end

  def user_response_01(riddle_answer)
    if riddle_answer == "42"
      correct_answer()
    else
      incorrect_answer()
    end
  end

  def user_response_02(riddle_answer)
    if riddle_answer == "hotdog"
      correct_answer()
    else
      incorrect_answer()
    end
  end

  def user_response_03(riddle_answer)
    if riddle_answer == "manducare"
      correct_answer()
    else
      incorrect_answer()
    end
  end

  def spider_riddle(question_selector)

    case question_selector
    when 1
      puts "What is the answer to life, universe, and everything?\n"
      print "> "
      riddle_answer = $stdin.gets.chomp
      user_response_01(riddle_answer)
    when 2
      puts "Complete the following: 'You are the sausage to my...'\n"
      print "> "
      riddle_answer = $stdin.gets.chomp
      user_response_02(riddle_answer)
    when 3
      puts "Complete the following: 'Omni casum...'\n"
      print "> "
      riddle_answer = $stdin.gets.chomp
      user_response_03(riddle_answer)
    end
  end

  def enter()
    puts "You stand before the front door of the tree house castle."
    ## Create riddle
    puts """
    You knock on the front door, but no-one answers.

    Suddenly, a spider scuttles down on to the door handle.

    \"G'day!\" it says.

    \"Hello!\" You reply.

    \"If you would like to enter, you'll have to answer a riddle.\"

    \"OK,\" you reply, not having much of a choice in the matter.

    \"Alright, then, here goes...\"
    """

    question_selector = rand(0..3)

    spider_riddle(question_selector)

  end
end
