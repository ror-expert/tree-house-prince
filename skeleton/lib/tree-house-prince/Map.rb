# Saves me having to remember to require newly created scenes
map_files = Dir["skeleton/lib/tree-house-prince/*.*"]
map_files.each do |f|
  stripped = File.basename(f, "*.*")
  if stripped == "Map.rb"
    puts "I will not add #{f}"
  # elsif stripped == "SpiralStaircase.rb"
  #   puts "I will not add #{f}"
  else
    puts stripped
    require_relative stripped
  end
end


class Map

  @@scenes = {
    'introduction' => Introduction.new(),
    'meadow' => Meadow.new(),
    'river' => River.new(),
    'front_door' => FrontDoor.new(),
    'ground_floor' => GroundFloor.new(),
    'first_floor' => FirstFloor.new(),
    'second_floor' => SecondFloor.new(),
    'third_floor' => ThirdFloor.new(),
    'fourth_floor' => FourthFloor.new(),
    'fifth_floor' => FifthFloor.new(),
    'machine_room' => MachineRoom.new(),
    'kitchen' => Kitchen.new(),
    'library' => Library.new(),
    'bedroom' => Bedroom.new(),
    'study' => Study.new(),
    'spiral_staircase_0' => SpiralStaircase.new(0),
    'spiral_staircase_1' => SpiralStaircase.new(1),
    'spiral_staircase_2' => SpiralStaircase.new(2),
    'spiral_staircase_3' => SpiralStaircase.new(3),
    'spiral_staircase_4' => SpiralStaircase.new(4),
    'spiral_staircase_5' => SpiralStaircase.new(5),
    'finished' => Finished.new(),
    'death' => Death.new(),
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
