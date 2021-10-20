exit unless Rails.env.development?

puts 'Delete the Data'
Recipe.delete_all
User.delete_all

puts 'Creating User'
user = FactoryBot.create(:user, email: 'test@example.com')

puts 'Creating Recipes'
30.times do
  FactoryBot.create(:recipe, user: user)
end