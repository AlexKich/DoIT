class AddFio3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fio3, :string
  end
end
