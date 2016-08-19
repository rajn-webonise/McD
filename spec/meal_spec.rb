require 'spec_helper'

describe 'Testing Meal Class#' do

  context 'Can make an object' do
    it 'should create an object' do
      new_meal = Meal.new("pizza", 200)
      expect(new_meal.nil?).to eq false
    end
  end

end
