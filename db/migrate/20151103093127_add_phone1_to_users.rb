class AddPhone1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone1, :string
  end
end
