require "pry"
require "./human"
require "./random"
require "./counter"
require "./smart"

class GuessingGame
  def initialize(player)
    @player = player
  end

  def play
    number = rand(1..100)
    guess = @player.get_guess(number)
    until guess == number
      if guess > number
        puts "That's way too high, you crazy bastard!"
      else
        puts "If you went any lower, Satan would hug you.  TOO LOW!"
      end
      guess = @player.get_guess(number)
    end
    puts "You win! The number was #{number}.  You must be a wizard!"
  end
end

game = GuessingGame.new(SmartAI.new)

game.play


puts
puts
puts "The game is over.  You should be happy.  This is what you wanted.\n\n"