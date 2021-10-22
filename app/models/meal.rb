class Meal < ApplicationRecord
  has_many :side_dishes 
  has_many :recipes, through: :side_dishes 
  
  belongs_to :meal_plan, inverse_of: :meals
  belongs_to :recipe
end