class AddPrimaryKeyToIngredientsRecipes < ActiveRecord::Migration
  def change
add_column :ingredients_recipes, :id, :primary_key

  end
end
