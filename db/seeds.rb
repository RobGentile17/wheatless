exit unless Rails.env.development?

puts 'Delete the Data'
Recipe.delete_all
User.delete_all

puts 'Creating User'
user = FactoryGirl.create(:user, email: 'test@example.com')

puts 'Creating Recipes'
1000.times do
  FactoryGirl.create(:recipe, user: user)
end