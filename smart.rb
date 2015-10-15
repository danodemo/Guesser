
class SmartAI

  def get_guess(number)
    l = 1
    h = 100
    guess = rand(l..h)
  if guess > number
 h = guess
 guess = rand(l..h)
else
  l = guess
  guess = rand(l..h)
end
end
end

def MockHumanPlayer
  puts "The AI laughs at you:"
  puts "'Hahahahaha, you'll never beat me, human weakling.'"
end