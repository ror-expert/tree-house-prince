require_relative "Scene.rb"

class Introduction < Scene
  def enter()

    clear_screen()

    puts """

    TTTTT H   H EEEEE     OOOOO DDDD  EEEEE SSSSS SSSSS IIIII  AAA
      T   H   H E         O   O D   D E     S     S       I   A   A
      T   HHHHH EEEEE     O   O D   D EEEEE SSSSS SSSSS   I   AAAAA
      T   H   H E         O   O D   D E         S     S   I   A   A
      T   H   H EEEEE     OOOOO DDDD  EEEEE SSSSS SSSSS IIIII A   A

    """

    return 'meadow'
  end

end
