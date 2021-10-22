exit unless Rails.env.development?

puts 'Delete the Data'
Recipe.delete_all
User.delete_all
SideDish.delete_all

puts 'Creating User'
user = FactoryBot.create(:user, email: 'test@example.com')

puts 'Creating Recipes'
30.times do
  FactoryBot.create(:recipe, user: user)
end

puts 'Creating Side Dishes'

SideDish.create(name: "Mashed Potatoes")
SideDish.create(name: "Vegetables")
SideDish.create(name: "Fruits")
SideDish.create(name: "Chips")
