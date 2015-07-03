class CreateContinents < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :name
      t.string :hemisphere
      t.integer :country_id

      t.timestamps
    end
  end
end
