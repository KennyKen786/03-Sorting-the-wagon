DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

MEALS = {
  "Cheesy Combo" => ["Cheese Burger", "Sweet Potatoes", "Lemonade"],
  "Veggie Combo" => ["Veggie Burger", "Sweet Potatoes", "Iced Tea"],
  "Vegan Combo" => ["Vegan Burger", "Salad", "Lemonade"]
}

def calories_counter(orders)
  orders.sum { |order| calculate_calories(order) }
end

def calculate_calories(item)
  if DISHES_CALORIES.key?(item)
    DISHES_CALORIES[item]
  elsif MEALS.key?(item)
    MEALS[item].sum { |dish| DISHES_CALORIES[dish] }
  else
    0
  end
end
