require_relative "Scene.rb"

class MachineRoom < Scene

  def enter()

    puts "You enter the machine room and see some interesting contraptions.  More to be written about this later."

    return 'first_floor'
  end
end
