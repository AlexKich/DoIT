class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :number
      t.string :name
      t.integer :town
      t.integer :street
      t.string :bldg
      t.string :housing
      t.string :floor
      t.date :date_start
      t.date :date_end
      t.integer :id_hard
      t.integer :id_stock
      t.string :business_hours
      t.integer :id_provider
      t.string :phone

      t.timestamps
    end
  end
end
