class Recipe < ActiveRecord::Base
  attr_accessible :instructions, :name, :category_id, :price, :brand, :ingredients, :image

  belongs_to :category
  # has_and_belongs_to_many :ingredients
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  mount_uploader :image, RecipeImageUploader
end
