require_relative "Scene.rb"

class River < Scene
  def enter()
    puts "You visit the river and then go to the house."
    return 'house'
  end
end
