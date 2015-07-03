class Ingredient < ActiveRecord::Base
  attr_accessible :name
  has_many :ingredients_recipes
  has_many :recipes, through: :ingredients_recipes
end
