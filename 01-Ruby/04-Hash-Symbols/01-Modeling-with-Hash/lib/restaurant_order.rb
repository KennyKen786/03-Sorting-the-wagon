RESTAURANT_MENU = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  burger_calories = RESTAURANT_MENU[burger]
  side_calories = RESTAURANT_MENU[side]
  beverage_calories = RESTAURANT_MENU[beverage]
  if burger_calories.nil? || side_calories.nil? || beverage_calories.nil?
    return "One or more items are not available in the menu"
  end

  total_calories = burger_calories + side_calories + beverage_calories
  return total_calories
end
