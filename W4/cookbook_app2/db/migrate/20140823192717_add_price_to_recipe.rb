class AddPriceToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :price, :integer
  end
end
