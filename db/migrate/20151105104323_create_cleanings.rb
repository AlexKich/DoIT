class CreateCleanings < ActiveRecord::Migration
  def change
    create_table :cleanings do |t|
      t.date :date_check
      t.integer :user_shop_start
      t.integer :user_shop_end
      t.integer :cenzor
      t.string :flooring
      t.string :wc
      t.string :shelves
      t.string :storeroom
      t.string :territory
      t.string :household_eq
      t.string :orderinbox
      t.string :orderindoc
      t.string :displayofgoods
      t.string :price_tags
      t.string :tech_eq

      t.timestamps
    end
  end
end
