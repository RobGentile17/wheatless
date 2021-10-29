require "rails_helper"

RSpec.describe Recipe, type: :model do 
  describe ".new" do 
    it "is valid with all required attributes" do 
      user = User.create(email: "rob@gmail.com", password: 123456)

      recipe = Recipe.new(name: "Chicken", description: "Really Good", user: user)
      
      expect(recipe).to be_valid
    end

    it "is not valid without a name" do 
      recipe = Recipe.new(description: "Really good")

      expect(recipe).to_not be_valid
    end

    it "is not valid without a description" do 
      recipe = Recipe.new(name: "Chicken")

      expect(recipe).to_not be_valid
    end
  end

  describe "#to_s" do 
    it "should return name (to_s)" do
      Recipe.new.to_s == "name"
    end
  end
end