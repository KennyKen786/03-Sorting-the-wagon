require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  if player_score > 21
    "You bust! You lose."
  elsif player_score == 21
    "Black Jack! You win!"
  elsif player_score > bank_score
    "You beat the bank! You win."
  elsif player_score < bank_score
    "You lose!"
  else
    "Push. It's a tie"
  end
end
