class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.string :inv_num
      t.references :company, index: true
      t.integer :department_id
      t.string :by_doc
      t.decimal :by_price
      t.string :model_name
      t.boolean :notebook
      t.string :cpu
      t.string :memory
      t.string :hdd
      t.string :keyboard
      t.string :mouse
      t.string :speaker
      t.date :spisan
      t.text :spisan_txt
      t.integer :user_id

      t.timestamps
    end
  end
end
