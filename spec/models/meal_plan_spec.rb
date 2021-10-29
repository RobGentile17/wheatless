require "rails_helper"

RSpec.describe MealPlan, type: :model do 
  describe ".new" do 
    it "is valid with all required attributes" do 
      user = User.create(email: "rob@gmail.com", password: 123456)
      meal_plan = MealPlan.new(start_date: 2021, end_date: 2021, user: user )
      
      expect(meal_plan).to be_valid
    end
  end

  describe "has many meals" do 
    it { should have_many(:meals).dependent(:destroy) }
  end

  describe "belongs to user" do 
    it { should belong_to(:user) }
  end

  describe "acccepts nested attributes for meals" do 
    it { should accept_nested_attributes_for(:meals) }
  end

  describe "#to_s" do 
    it "should return start_date - end_date (to_s)" do
      MealPlan.new.to_s == "start_date - end_date"
    end
  end
end
