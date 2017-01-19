require_relative "Scene.rb"

class Kitchen < Scene

  def enter()

    puts "You enter the kitchen, and get a sandwich.  More to be written about this later."

    return 'second_floor'
  end
end
