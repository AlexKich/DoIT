class AddFio2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fio2, :string
  end
end
