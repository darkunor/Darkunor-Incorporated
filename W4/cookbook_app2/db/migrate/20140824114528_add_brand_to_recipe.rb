class AddBrandToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :brand, :string
  end
end
