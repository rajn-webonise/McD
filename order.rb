require 'byebug'

class Order

  def initialize()
    @price = 0
    @meals = Array.new
  end

  def price
    @price
  end

  def add_meal(meal)
    @meals.push meal
  end

  def total_price
    total = 0
    @meals.each do |meal|
      total += meal.price
    end
    puts "The total price of the order is: " + total
  end

  def get_meal(meal_name)
    @meals.each do |meal|
      byebug
      return meal if meal.name == meal_name
    end
  end

  def meals
    @meals
  end

end
