require_relative "Scene.rb"

class Death < Scene
  @@quips = [
    "\nYou tried so hard, but in the end it doesn't even matter.\n",
    "\nWell played, but not played well enough.\n",
    "\nOh well, c'est la vie... ou la mort peut-être.\n"
  ]

  def enter()

		clear_screen()
    puts @@quips[rand(0..(@@quips.length - 1))]
    return 'finished'
    exit(1)
  end
end
