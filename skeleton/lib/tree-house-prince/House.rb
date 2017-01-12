require_relative "Scene.rb"

class House < Scene
  def enter()
    puts "You are in the house, and then you finish the game."
    return 'finished'
  end
end
