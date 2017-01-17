class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Introduction
  def enter()
    puts """

    TTTTT H   H EEEEE     OOOOO DDDD  EEEEE SSSSS SSSSS IIIII  AAA
      T   H   H E         O   O D   D E     S     S       I   A   A
      T   HHHHH EEEEE     O   O D   D EEEEE SSSSS SSSSS   I   AAAAA
      T   H   H E         O   O D   D E         S     S   I   A   A
      T   H   H EEEEE     OOOOO DDDD  EEEEE SSSSS SSSSS IIIII A   A

    """
    return 'meadow'
  end

end

class Meadow < Scene

  def fork_in_the_road(userSelection)
    case userSelection
    when /1/, /tree/, /house/
      puts "You go to the tree house.\n"
      return 'front_foor'
    when /2/, /river/
      puts "You go to the river."
      return 'river'
    else
      puts "That does not compute."
    end
  end


  def enter()

    puts  """\n\nAfter a long journey, you arrive at the edge a tranquil meadow.  A flock of sheep munch contentedly in a large pen, and birds twitter in the trees.  At end of the meadow is a river and in the centre of the meadow stands a vast tree that reaches into the sky.  Wrapped around the tree is a chaotic collection of lean-tos, each one built as if it were an afterthought of an afterthought, with a spiral staircase running up the trunk.

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

class River < Scene
  def enter()
    puts "You visit the river and then go to the house."
    return 'front_foor'
  end
end

class House < Scene
  def enter()
    puts "You are in the house, and then you finish the game."
    return 'finished'
  end
end

class Finished < Scene
  def enter()
    puts "Well done! You have finished the game."
    return 'game_complete'
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Map

  @@scenes = {
    'introduction' => Introduction.new(),
    'meadow' => Meadow.new(),
    'front_foor' => House.new(),
    'finished' => Finished.new(),
  }

  attr_reader :scenes

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end
