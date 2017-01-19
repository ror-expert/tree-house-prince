require_relative "Scene.rb"

class Library < Scene

  def enter()

    puts "You enter the library and encounter some talkative books.  More to be written about this later."

    return 'third_floor'
  end
end
