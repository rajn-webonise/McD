require 'spec_helper'

describe 'Testing Order Class#' do

  context 'Testing constructor' do
    it 'should create an object' do
      new_order = Order.new
      expect(new_order.nil?).to eq false
    end
  end

  context 'Testing adding meals to order' do
    it 'should add a meal' do
      meal1 = double('Meal')
      allow(meal1).to receive(:name){"burgers"}
      allow(meal1).to receive(:price){100}

      order = Order.new
      order.add_meal(meal1)
      saved_meal = order.get_meal(meal1.name)

      expect(saved_meal.name).to eq(meal1.name)
      expect(saved_meal.price).to eq(meal1.price)
    end
  end

  context 'Testing retreiving meals from order' do
    it 'should return a meal' do

      meal1 = double('Meal')
      allow(meal1).to receive(:name) { 'burgers'}
      meal2 = double('Meal')
      allow(meal2).to receive(:name) { 'pizzas'}

      order = Order.new()
      order.add_meal(meal1)
      order.add_meal(meal2)

      saved_meal = order.get_meal(meal1.name)

      expect(saved_meal.name).to eq(meal1.name)

    end
  end


end
