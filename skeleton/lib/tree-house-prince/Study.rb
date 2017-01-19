require_relative "Scene.rb"

class Study < Scene

  def enter()

    puts "You find that the study door is locked.  As there is not much you can do, you head back to the landing."

    return 'fifth_floor'
  end
end
