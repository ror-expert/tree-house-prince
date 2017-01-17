require_relative "Scene.rb"
require_relative "Introduction.rb"
require_relative "Meadow.rb"
require_relative "River.rb"
require_relative "House.rb"
require_relative "Finished.rb"

class Map

  @@scenes = {
    'introduction' => Introduction.new(),
    'meadow' => Meadow.new(),
    'river' => River.new(),
    'front_door' => FrontDoor.new(),
    'ground_floor' => GroundFloor.new(),
    'first_floor' => FirstFloor.new(),
    'spiral_staircase' => SpiralStaircase.new(),
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

# start_scene = 'introduction'
# scene_name = 'meadow'
#
# test_scene_map = Map.new(start_scene)
# test_scene_map.next_scene(scene_name)
# test_scene_map.opening_scene()
#
# current_scene = test_scene_map.opening_scene()
# last_scene = test_scene_map.next_scene('finished')
#
# # while current_scene != last_scene
# #   next_scene_name = current_scene.enter()
# #   current_scene = test_scene_map.next_scene(next_scene_name)
# # end
#
# current_scene.enter()
