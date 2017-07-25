class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :amount
      t.string :availabil

      t.timestamps
    end
  end
end
