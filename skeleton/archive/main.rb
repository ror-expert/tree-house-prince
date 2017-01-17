

class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class HouseScene < Scene

  def floorSelection(floorNumber)
    puts  """
    You are at a spiral staircase.  There is a sign on the landing:

    0. Ground Floor: Entrance to the castle

    1. First Floor: Machine room

    2. Second Floor: Kitchen

    3. Third Floor: Library

    4. Fourth Floor: Royal Bedroom

    5. Penthouse: Study

    6. Exit the castle and go back to the meadow.

    Where would you like to go to?

    """
    currentFloor = floorNumber
    while currentFloor == floorNumber
      print "> "

      floorSelection = $stdin.gets.chomp.downcase()

      case floorSelection
      when /0/, /ground/, /entrance/
        if currentFloor == 0
          puts "You are already here.  Try another floor."
        elsif currentFloor != 0
          puts "You descend the stairs to the ground floor."
          return 'spiral_staircase'
        else
          puts "Something has clearly gone wrong."
        end
      when /1/, /first/, /machine/
        if currentFloor < 1
          puts "You ascend the stairs to the machine room."
          currentFloor == 1
          return 'machine_room'
        elsif currentFloor > 1
          puts "You descend the stairs to the machine room."
          currentFloor == 1
          return 'machine_room'
        elsif currentFloor == 1
        puts "You are already here.  Try another floor."
        else
          puts "There has clearly been a mistake somewhere."
        end
      when /2/, /second/, /kitchen/
        if currentFloor < 2
          puts "You ascend the stairs to the kitchen."
          currentFloor == 2
          return 'kitchen'
        elsif currentFloor > 2
          puts "You descend the stairs to the kitchen."
          currentFloor == 2
          return 'kitchen'
        elsif currentFloor == 2
        puts "You are already here.  Try another floor."
        else
          puts "There has clearly been a mistake somewhere."
        end
      when /3/, /third/, /library/
        if currentFloor < 3
          puts "You ascend the stairs to the library."
          currentFloor == 3
          return 'library'
        elsif currentFloor > 3
          puts "You descend the stairs to the library."
          currentFloor == 3
          return 'library'
        elsif currentFloor == 3
        puts "You are already here.  Try another floor."
        else
          puts "There has clearly been a mistake somewhere."
        end
      when /4/, /fourth/, /bedroom/
        if currentFloor < 4
          puts "You ascend the stairs to the bedroom."
          currentFloor == 4
          return 'bedroom'
        elsif currentFloor > 4
          puts "You descend the stairs to the bedroom."
          currentFloor == 4
          return 'bedroom'
        elsif currentFloor == 4
        puts "You are already here.  Try another floor."
        else
          puts "There has clearly been a mistake somewhere."
        end
      when /5/, /fifth/, /study/, /penthouse/
        if currentFloor < 5
          puts "You ascend the stairs to the study."
          currentFloor == 5
          return 'study'
        elsif currentFloor > 5
          puts "You descend the stairs to the study."
          currentFloor == 5
          return 'study'
        elsif currentFloor == 5
        puts "You are already here.  Try another floor."
        else
          puts "There has clearly been a mistake somewhere."
        end
      when /6/, /leave/, /exit/, /back/, /meadow/
        if currentFloor != 0
          puts  "You descend the stairs, walk out the door, and keep going until the you reach the edge of the meadow."
          currentFloor == 0
          return 'meadow'
        elsif currentFloor == 0
          puts "You walk out the door, and keep going until the you reach the edge of the meadow."
          return 'meadow'
        else
          puts "There has clearly been a mistake somewhere."
        end
      else
        puts "I don't understand your request"
      end

    end
  end

  def stayOrLeave
    puts  """Do you wish to have a look around or go back out?

    Look around
    Go back out
    """

    print "> "

    stayInRoom = true

    while stayInRoom == true
      userSelection = $stdin.gets.chomp.downcase()
      case userSelection
      when /look/, /around/
        puts "You inspect a few items, but find nothing of interest."
        puts  """Do you wish to have a look around or go back out?

        1. Look around
        2. Go back out
        """

        print "> "
      when /go/, /back/, /out/
        puts "You head back out to the spiral staircase."
        stayInRoom = false
      else
        puts "I don't understand what you want."
        puts  """Do you wish to have a look around or go back out?

        1. Look around
        2. Go back out
        """

        print "> "
      end
    end

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


class Meadow < Scene
  def enter()

    puts """

    TTTTT H   H EEEEE     OOOOO DDDD  EEEEE SSSSS SSSSS IIIII  AAA
      T   H   H E         O   O D   D E     S     S       I   A   A
      T   HHHHH EEEEE     O   O D   D EEEEE SSSSS SSSSS   I   AAAAA
      T   H   H E         O   O D   D E         S     S   I   A   A
      T   H   H EEEEE     OOOOO DDDD  EEEEE SSSSS SSSSS IIIII A   A

    """



    `puts  """\n\nAfter a long journey, you arrive at the edge a tranquil meadow.  A flock of sheep munch contentedly in a large pen, and birds twitter in the trees.  At end of the meadow is a river and in the centre of the meadow stands a vast tree that reaches into the sky.  Wrapped around the tree is a chaotic collection of lean-tos, each one built as if it were an afterthought of an afterthought, with a spiral staircase running up the trunk.

    At the foot of the tree is a front door.

    Where would you like to go?

    1. Go to the tree house
    2. Go to the river

    """, 80
    print "> "
`
    userSelection = $stdin.gets.chomp.downcase()

    case userSelection
    when /1/, /tree/, /house/
      puts "You go to the tree house.\n"
      return 'front_door'
    when /2/, /river/
      puts "You go to the river."
      return 'river_bank'
    else
      puts "That does not compute."
    end
  end
end

class RiverBank < Scene
  def enter()
    puts  """
    You go to the river bank.  You feel rather thirsty and decide to have a drink.  As you take a few handfuls of fresh water, you realise that the river current is very strong.  It would be extremely dangerous to wade into the water.

    Your thirst quenched, you stand back up and look around.
    The eclectic tree house is in the centre of the meadow.
    The river is in front of you.

    What do you do?

    1. Go to the tree house.
    2. Wade into the river.

    """, 80

    print "> "

    userSelection = $stdin.gets.chomp.downcase()
    puts "\n"

    case userSelection
    when /1/, /tree/, /house/
      puts "You go to the tree house.\n"
      return 'front_door'
    when /2/, /river/
      puts "You wade into the river."
      puts "The strong current pulls you under and you drown. "
      return 'death'
    else
      puts "That does not compute."
    end
  end
end

class FrontDoor < Scene
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
    """, 80

    def correctAnswer()
      puts "\n\nThat is correct!"
      puts "The door opens and the spider scuttles back into the doorframe."
      puts "You walk through.\n\n"
      return 'spiral_staircase'
    end

    def incorrectAnswer()
      puts "\nWrong answer!"
      puts "The spider bites your hand and injects you with venom."
      puts "You immediately collapse and die.\n"
      return 'death'
    end

    questionSelection = rand(0..3)

    puts questionSelection

    case questionSelection
    when 1
      puts "What is the answer to life, universe, and everything?\n"
      print "> "
      answer = $stdin.gets.chomp
      if answer == "42"
        correctAnswer()
      else
        incorrectAnswer()
      end
    when 2
      puts "Complete the following: 'You are the sausage to my...'\n"
      print "> "
      answer = $stdin.gets.chomp
      if answer == "hotdog"
        correctAnswer()
      else
        incorrectAnswer()
      end
    when 3
      puts "Complete the following: 'Omni casum...'\n"
      print "> "
      answer = $stdin.gets.chomp
      if answer == "manducare"
        correctAnswer()
      else
        puts "\"Sorry, you only get one chance with me,\" says the spider."
        incorrectAnswer()
      end

    end
  end
end

class SpiralStaircase < HouseScene
  def enter()
    puts "You are on the ground floor."
    floorSelection(0)
  end
end

class MachineRoom < HouseScene
  def enter()
    puts  """
    You enter a room full of machines, but you don't understand what they do."""
    stayOrLeave()
    floorSelection(1)
  end
end

class Kitchen < HouseScene
  def enter()
    puts  "You enter the kitchen and interact with a robot who makes you a sandwich."
    stayOrLeave()
    floorSelection(2)
  end
end

class Library < HouseScene
  def enter()
    puts  "You enter the library and have a conversation with talking books, who tell you everything about themselves."
    stayOrLeave()
    floorSelection(3)
  end
end

class Bedroom < HouseScene
  def enter()
    puts """You enter the bedroom.
    You feel sleepy.  Do you want to lie down or keep on exploring?

    1. Lie down on the large, comfortable Russian-style floor cushian.

    2. Keep on exploring.

    """

    running = true
    while running == true
      userSelection = $stdin.gets.chomp.downcase()
      case userSelection
      when /1/, /lie/, /cushion/
        running == false
        puts "running = false"
        return 'marriage'
      when /2/, /keep/, /explor/
        running == false
        floorSelection(4)
      else
        puts "I'm not sure what you want."
      end
      end
    end
end

class Study < HouseScene
  def enter()
    puts  """You stand before a large oak door, which is locked.  You knock on the door, but no-one answers.  If anyone is in there, he is probably lost on contemplation of his lonely life as a king with a castle-in-the-making, but no queen to share it with.  There's not much you can do here."""
    stayOrLeave()
    floorSelection(5)
  end

end

class Death < Scene
  @@quips = [
    "\nYou tried so hard, but in the end it doesn't even matter.\n",
    "\nWell played, but not played well enough.\n",
    "\nOh well, c'est la vie... ou la mort peut-être.\n"
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class Marriage < Scene
  def enter()
    puts "The prince gives offers you an emerald ring pendant."
    puts "It reads, 'Mano Karalienė'."
    puts "What does the inscription mean?\n\n"

    print '> '


    ringTranslation = false

    while ringTranslation == false
      attemptedTranslation = $stdin.gets.chomp.downcase()

      if attemptedTranslation.include? "my queen"
        puts """

        HE: 'I think this ring should belong to thee.'

        YOU: 'Yes, I am,' you say to yourself, 'Thank you, I accept.'

        He places the ring on your finger.

        HE: 'We are not, then, in a dream?'

        YOU: 'A dream come true, methinks.'

        HE: 'If that be so, then thou art my queen.'

        YOU: 'And thou in that case art my king.'

        You place your lips on his and seal your marriage with a kiss.
        """

        ringTranslation == true

        return 'finished'

      else
        puts "Tai nėra tai, ką užrašas reiškia!\n"
        puts "Try again."
        print "> "
      end
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end


class Map

  @@scenes = {
    'meadow' => Meadow.new(),
    'river_bank' => RiverBank.new(),
    'front_door' => FrontDoor.new(),
    'spiral_staircase' => SpiralStaircase.new(),
    'machine_room' => MachineRoom.new(),
    'kitchen' => Kitchen.new(),
    'library' => Library.new(),
    'bedroom' => Bedroom.new(),
    'study' => Study.new(),
    'death' => Death.new(),
    'marriage' => Marriage.new(),
    'finished' => Finished.new(),
  }

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

# puts BackStory
a_map = Map.new('introduction')
a_game = Engine.new(a_map)
a_game.play()

backgroundSummary = """
You, the princess, start at the edge of a meadow.  At the far end of the meadow is a river; at the centre, a bizarre tree-house-castle.
You approach the tree-house-castle and knock on the door.
No-one answers, but there is a riddle that, if solved, will open the front door.  (What is the answer to life, the universe and everything? 42)
You unlock the door and ascend the spiral staircase.
You find a machine room filled with useless gadgets, a kitchen where a Linux computer will make you a sandwich but only if you sudo ask it, a library of talking books that tell you all about themselves and give away the ending, and a bedroom without a bed.
After exploring the other rooms, you enter the bedroom, become sleepy, lie down on the floor cushion, and go to sleep.
When you wake up, you see a handsome prince sleeping on the floor next to you.
You cuddle up next to him, and when you both wake up the following morning, you have the following exchange:

HE: 'Art thou an angel?' He asks you.

YOU: 'Nay, a princess.  Art thou thyself an angel?'

HE: 'Nay, but a prince.'

YOU: 'Is this thy castle?'

HE: 'A castle-in-the-making.'

YOU: 'It pleaseth me.'

They fell silent.

The prince gives offers you an emerald ring pendant.  It reads, 'Mano Karalienė'.  What does the inscription mean?

IF correct
continue story
ELSIF incorrect
try again

'I think this ring should belong to thee.'

YOU: 'Yes, I am,' you say to yourself, 'Thank you, I accept.'

He places the ring on your finger.

HE: 'We are not, then, in a dream?'

YOU: 'A dream come true, methinks.'

HE: 'If that be so, then thou art my queen.'

YOU: 'And thou in that case art my king.'

You place your lips on his and seal your marriage with a kiss.
"""
