require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
def interactive_coach
  puts "Welcome to your personal coach!"
  loop do
    print "You: "
    message = gets.chomp
    response = coach_answer_enhanced(message)
    puts "Coach: #{response}"
    break if message.downcase == "i am going to work right now!"
  end
  puts "The session is over. Goodbye!"
end
