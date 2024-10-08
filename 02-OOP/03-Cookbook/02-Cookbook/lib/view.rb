# TODO: Define your View class here, to display elements to the user and ask them for their input
class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_for_name
    puts "What is the name of the recipe?"
    print "> "
    gets.chomp
  end

  def ask_for_description
    puts "What is the description of the recipe?"
    print "> "
    gets.chomp
  end

  def ask_for_index
    puts "Which recipe number would you like to remove?"
    prints "> "
    gets.chomp.to_i - 1
  end
end
