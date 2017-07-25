class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :content
      t.integer :user_post
      t.integer :user_rev
      t.boolean :post_read

      t.timestamps
    end
  end
end
