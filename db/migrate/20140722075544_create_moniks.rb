class CreateMoniks < ActiveRecord::Migration
  def change
    create_table :moniks do |t|
      t.string :inv_num
      t.string :by_doc
      t.decimal :by_price, precision: 9, scale: 2
      t.string :monitor_name
      t.integer :diagonal
      t.date :spian
      t.text :spisan_txt
      t.references :department, index: true
      t.references :company, index: true

      t.timestamps
    end
  end
end
