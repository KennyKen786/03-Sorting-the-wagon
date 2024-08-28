class Restaurant
  def initialize(name, cuisine, location, rating)
    @name = name
    @cuisine = cuisine
    @location = location
    @rating = rating
  end

  def display_info
    puts "Restaurant Name: #{@name}"
    puts "Cuisine Type: #{@cuisine}"
    puts "Location: #{@location}"
    puts "Rating: #{@rating}/5"
  end
end
