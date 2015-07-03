class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :flag
      t.string :map
      t.string :video
      t.integer :population
      t.text :summary

      t.timestamps
    end
  end
end
