class Restaurant
  attr_accessor :city, :name, :average_rating

  def initialize(city, name)
    @city = city
    @name = name
    @ratings = []
    @average_rating = 0.0
  end

  def rate(new_rate)
    @ratings << new_rate
    @average_rating = @ratings.sum.to_f / @ratings.size
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |restaurant| restaurant.city.downcase == city.downcase }
  end
end

jules_verne = Restaurant.new("paris", "Jules Verne")
bluebird = Restaurant.new("london", "Bluebird")
daniel = Restaurant.new("new york", "Daniel")
restaurants = [jules_verne, bluebird, daniel]

filtered_restaurants = Restaurant.filter_by_city(restaurants, "london")
puts filtered_restaurants.inspect
