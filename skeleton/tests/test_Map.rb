require "tree-house-prince/Scene.rb"
require "tree-house-prince/Introduction.rb"
require "tree-house-prince/Meadow.rb"
require "tree-house-prince/River.rb"
require "tree-house-prince/House.rb"
require "tree-house-prince/Finished.rb"
require "tree-house-prince/Map.rb"

class TestCase < Test::Unit::TestCase

  def list_scenes()

    test_map = Map.new()
    test_initialize = test_map('introduction')
    assert_equal(test_initialize(@start_scene), 'finished')




  end

end
