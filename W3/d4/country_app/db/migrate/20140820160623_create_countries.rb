class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :population
      t.string :language
      t.string :currency

      t.timestamps
    end
  end
end
