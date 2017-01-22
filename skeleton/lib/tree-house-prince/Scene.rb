class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    return 'unconfigured_scene'
  end

  def clear_screen()
     puts "Going to clear the screen"
     if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
        system('cls')
      else
        system('clear')
     end
  end
end
