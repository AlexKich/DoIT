class AddCleaningToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cleaning, :integer
  end
end
