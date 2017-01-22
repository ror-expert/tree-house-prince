require_relative "Scene.rb"

class Kitchen < Scene

  def outcome_sandwich_selection()

    case @status
    when "success"
      puts "You enjoy a delicious sandwich and head back out the landing on the second floor."
    when "failure"
      puts "You give up, leave the kitchen, and return to the landing on the second floor."
    else
      "Something has gone wrong in the outcome of the sandwich selection."
    end
  end

  def sandwich_selection(user_selection)

    case user_selection
    when /sudo.*sandwich/
      puts "The robot happily complies and makes you a sandwich."
      puts """

                          _.---._
                      _.-~       ~-._
                  _.-~               ~-._
              _.-~                       ~---._
          _.-~                                 ~\
       .-~                                    _.;
       :-._                               _.-~ ./
       }-._~-._                   _..__.-~ _.-~)
       `-._~-._~-._              / .__..--~_.-~
           ~-._~-._\.        _.-~_/ _..--~~
               ~-. \`--...--~_.-~/~~
                  \.`--...--~_.-~
                    ~-..----~



"""
      @choice = true
      @status = "success"
      return @status
    when /give up/
      puts "No problem, you're welcome to try again."
      @choice = true
      @status = "failure"
      return @status
    else
      puts "Sorry, I can't make you a sandwich, you do not have super-user authority.  You can ask again or give up."
      @status = "try_again"
      return @status
    end

  end

  def enter()

		clear_screen()

    @choice = false

    puts """
    ·___·
   |o   o|
    \ ' /
     |¯|
/¯|¯¯¯|¯ ¯|¯¯¯\¯\
| |___|___| |
| |\__|__/| |
|_| |_|_| |_|
 ¥  |_|_|  ¥
  /¯|···|¯\
  | |   | |
  |_|   |_|
  |¯|   |¯|
  | |   | |
  |_|   |_|
  / \   / \
 (>.<) (>.<)
    """

    puts """You enter the kitchen and encounter a friendly robot.  A sign reads, 'Ask the robot to make you a sandwich, but do so with super-user authority.'"""

    while @choice == false

      print "> "

      user_selection = $stdin.gets.chomp.downcase()

      sandwich_selection(user_selection)

    end

    outcome_sandwich_selection()


    return 'second_floor'
  end
end

# testing = Kitchen.new()
# testing.enter()
