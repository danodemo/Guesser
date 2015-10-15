require 'pry'

class SmartestAI

def initialize
  @guess = 50
  @min = 1
  @max = 100
end

def get_guess(last_result)
    if last_result == :low
      @min = @guess
      @guess = rand(@min + @max) / 2
    elsif last_result == :high
      @max = @guess
      @guess = rand(@min + @max) / 2
    else
      @guess
    end
  end
end


def MockHumanPlayer
  puts "The AI laughs at you:"
  puts "'Hahahahaha, you'll never beat me, human weakling.'"
end