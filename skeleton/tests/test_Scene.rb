require "tree-house-prince/Scene.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_scene()

    scene_test = Scene.new()
    assert_equal(scene_test.enter(), 'unconfigured_scene')

  end

end
