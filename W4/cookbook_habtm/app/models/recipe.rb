class Recipe < ActiveRecord::Base
  attr_accessible :name, :instructions, :category_id, :description, :ingredient_ids

  belongs_to :category

  validates :name, presence: true

  has_many :ingredients_recipes

  has_many :ingredients, through: :ingredients_recipes


end
