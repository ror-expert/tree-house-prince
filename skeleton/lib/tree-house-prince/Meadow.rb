require_relative "Scene.rb"

class Meadow < Scene

  def fork_in_the_road(userSelection)
    case userSelection
    when /1/, /tree/, /house/
      puts "You go to the tree house.\n"
      return 'front_door'
    when /2/, /river/
      puts "You go to the river."
      return 'river'
    else
      puts "That does not compute."
    end
  end


  def enter()

    puts """
        vv
    vvv^^^^vvvvv
    vvvvvvvvv^^vvvvvv^^vvvvv
    vvvvvvvvvvv^^^^^^^^^^^^^vvvvv^^^vvvvv
    vvvvvvv^^^^^^^^^vvv^^^^^^^vvvvvvvvvvv^^^vvv
    vvvv^^^^^^vvvvv^^^^^^^vv^^^^^^^vvvv^^^vvvvvv
    vv^^^^^^^^vvv^^^^^vv^^^^vvvvvvvvvvvv^^^^^^vv^
    vvv^^^^^vvvv^^^^^^vvvvv^^vvvvvvvvv^^^^^^vvvvv^
    vvvvvvvvvv^^^v^^^vvvvvv^^vvvvvvvvvv^^^vvvvvvvvv
    ^vv^^^vvvvvvv^^vvvvv^^^^^^^^vvvvvvvvv^^^^^^vvvvvv
    ^vvvvvvvvv^^^^vvvvvv^^^^^^vvvvvvvv^^^vvvvvvvvvv^v
    ^^^^^^vvvv^^vvvvv^vvvv^^^v^^^^^^vvvvvv^^^^vvvvv
    vvvv^^vvv^^^vvvvvvvvvv^vvvvv^vvvvvv^^^vvvvvvv^^vvvvv^
    vvv^vvvvv^^vvvvvvv^^vvvvvvv^^vvvv||vvv^vvvv^^vvvvv^v
    ^vvvvvv^^vvvvvvvv^vv^vvv^^^^^^___||^^^vvvvvvvv^^^^
    ^^vvvvvvv^^vvvvvvvvvv^^^^/\@@@@@@\|vvvv^^^
         ^^vvvvvv^^^^^^vvvvv/__\@@@@@@\^vvvv^v
             ;^^vvvvvvvvvvv/____\@@@@@@\vvvvvvv
             ;      \_  ^\|[  -:] ||--| | _/^^
             ;        \   |[   :] ||_/| |/
             ;         \\ ||___:]______/
             ;          \   ;=; /
             ;           |  ;=;|
             ;          ()  ;=;|
            (()          || ;=;|
                        / / \;=;\

        """

    puts """\n\nAfter a long journey, you arrive at the edge a tranquil meadow.  A flock of sheep munch contentedly in a large pen, and birds twitter in the trees.  At end of the meadow is a river and in the centre of the meadow stands a vast tree that reaches into the sky.  Wrapped around the tree is a chaotic collection of lean-tos, each one built as if it were an afterthought of an afterthought, with a spiral staircase running up the trunk.

    At the foot of the tree is a front door.

    Where would you like to go?

    1. Go to the tree house
    2. Go to the river

    """


    print "> "

    userSelection = $stdin.gets.chomp.downcase()
    fork_in_the_road(userSelection)
  end
end
