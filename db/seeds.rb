exit if !Rails.env.development? 

puts "Delete the Data"
Recipe.delete_all 
User.delete_all 

puts "Creating User"

user = FactoryGirl.create(:user, email: "test@example")

puts "Creating Recipes"
20.times do 
  FactoryGirl.create(:recipe, user: user)
end