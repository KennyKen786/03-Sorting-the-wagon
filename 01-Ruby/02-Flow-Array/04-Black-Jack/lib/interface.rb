require_relative "croupier"
require_relative "black_jack"

def play_black_jack
  bank_score = pick_bank_score
  player_score = 0

  loop do
    puts "Card? Type 'Y' or 'yes' to get a new card, or anything else to stop."
    answer = gets.chomp.downcase

    if ['y', 'yes'].include?(answer)
      player_score += pick_player_card
      puts state_of_the_game(player_score, bank_score)

      break if player_score >= 21
    else
      break
    end
  end
  puts end_game_message(player_score, bank_score)
end

play_black_jack
