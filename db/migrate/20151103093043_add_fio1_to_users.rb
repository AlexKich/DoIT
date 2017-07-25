class AddFio1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fio1, :string
  end
end
