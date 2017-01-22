require_relative "Scene.rb"

class Study < Scene

  def enter()

		clear_screen()

    puts """
    |\ ___________ /|
    | |  _ _ _ _  | |
    | | | | | | | | |
    | | |-+-+-+-| | |
    | | |-+-+-+-| | |
    | | |_|_|_|_| | |
    | |     ___   | |
    | |    /__/   | |
    | |   [%==] ()| |
    | |         ||| |
    | |         ()| |
    | |           | |
    | |           | |
    | |           | |
    |_|___________|_| 
    """
    puts """You stand before a large oak door, which is locked.  You knock on the door, but no-one answers.  If anyone is in there, he is probably lost on contemplation of his lonely life as a king with a castle-in-the-making, but no queen to share it with.  There's not much you can do here.

    """

    return 'fifth_floor'
  end
end
