require_relative "test_methods_argument_1.rb"

class Map

  @@scenes = {

    'introduction' => Introduction.new(),
    'room' => Room.new("foobar"),
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
