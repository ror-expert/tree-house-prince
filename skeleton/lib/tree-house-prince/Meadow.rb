require_relative "Scene.rb"

class Meadow < Scene

  def fork_in_the_road(userSelection)
    case userSelection
    when /1/, /tree/, /house/
      puts "You go to the tree house.\n"
      return 'house'
    when /2/, /river/
      puts "You go to the river."
      return 'river'
    else
      puts "That does not compute."
    end
  end


  def enter()

    puts """\n\nAfter a long journey, you arrive at the edge a tranquil meadow.  A flock of sheep munch contentedly in a large pen, and birds twitter in the trees.  At end of the meadow is a river and in the centre of the meadow stands a vast tree that reaches into the sky.  Wrapped around the tree is a chaotic collection of lean-tos, each one built as if it were an afterthought of an afterthought, with a spiral staircase running up the trunk.

    At the foot of the tree is a front door.

    Where would you like to go?

    1. Go to the tree house
    2. Go to the river

    """, 80
    print "> "

    userSelection = $stdin.gets.chomp.downcase()
    fork_in_the_road(userSelection)
  end
end
