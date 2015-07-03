class Ingredient < ActiveRecord::Base
  attr_accessible :name, :image, :recipe_ids

  validates :name, presence: true

  has_many :ingredients_recipes
  
  has_many :recipes, through: :ingredients_recipes
end
