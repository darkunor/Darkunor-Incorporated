class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :actors
      t.integer :genre_id
      t.text :review
      t.string :placedwatched

      t.timestamps
    end
  end
end
