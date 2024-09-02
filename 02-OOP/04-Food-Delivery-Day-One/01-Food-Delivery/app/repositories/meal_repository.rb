require 'csv'
require_relative '../models/meal'

class MealRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @meals = []
    load_csv if File.exist?(@csv_file)
  end

  def all
    @meals.dup
  end

  def create(meal)
    meal.id = next_id
    @meals << meal
    save_csv
  end

  def find(id)
    @meals.find { |meal| meal.id == id }
  end

  private

  def next_id
    @meals.empty? ? 1 : @meals.last.id + 1
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << %w[id name price]
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end
end
