user = FactoryGirl.create(:user, email: "test@example.com")

puts "Creating Recipes"
30.times do 
  FactoryGirl.create(:recipe, user: user)
end