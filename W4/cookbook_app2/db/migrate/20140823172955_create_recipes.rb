class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.references :category

      t.timestamps
    end
    add_index :recipes, :category_id
  end
end
