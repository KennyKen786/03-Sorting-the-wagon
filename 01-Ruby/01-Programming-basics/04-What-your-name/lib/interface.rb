require_relative "compute_name"

# TODO: ask for the first name
puts "What is your first name?"
first_name = gets.chomp
# TODO: ask for the middle name
puts "What is your middle name?"
middle_name = gets.chomp
# TODO: ask for the last name
puts "What is your last name"
last_name = gets.chomp
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
full_name = compute_name(first_name, middle_name, last_name)
puts "Hello, #{full_name}"
