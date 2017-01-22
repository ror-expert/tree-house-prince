require_relative "skeleton/lib/tree-house-prince/Map.rb"

a_map = Map.new('introduction')
a_game = Engine.new(a_map)
a_game.play()
