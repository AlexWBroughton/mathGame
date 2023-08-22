require_relative "game"
require_relative "player"
require_relative "question"

class Main
  game = Game.new()
  game.start()
end