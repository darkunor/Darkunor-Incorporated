class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :current_balance
      t.integer :savings_balance

      t.timestamps
    end
  end
end
