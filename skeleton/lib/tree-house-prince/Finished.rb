require_relative "Scene.rb"

class Finished < Scene
  def enter()
    puts "Well done! You have finished the game."
    return 'game_complete'
  end
end
