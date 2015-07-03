class RemoveCountryIdFromContinents < ActiveRecord::Migration
  def up
    remove_column :continents, :country_id
  end

  def down
    add_column :continents, :country_id, :integer
  end
end
