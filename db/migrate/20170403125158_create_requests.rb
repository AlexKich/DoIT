class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :department
      t.integer :reponsible
      t.datetime :dedline
      t.datetime :dateend
      t.string :subject
      t.text :descr
      t.integer :author
      t.string :doc

      t.timestamps
    end
  end
end
