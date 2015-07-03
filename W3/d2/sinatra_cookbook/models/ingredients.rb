class Ingredient < DBBase
attributes name: :string, cost: :string,
description: :text, quantity: :integer,
recipe_id: :integer 

  def self.table_name
    :ingredients
  end

  def initialize(params={})
    @id = params['id']
    @name = params['name']
  @cost = params['cost']
  @description = params['description']
  @recipe_id = params['recipe_id']  
  @quantity = params['quantity']
  end

def recipe
 Recipe.find(recipe_id) || Recipe.new
 end
end