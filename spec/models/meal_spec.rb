require "rails_helper"

RSpec.describe Meal, type: :model do 
  it { should belong_to(:meal_plan).inverse_of(:meals) }
  it { should belong_to(:recipe) }
end