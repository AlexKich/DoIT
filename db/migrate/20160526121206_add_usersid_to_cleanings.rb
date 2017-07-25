class AddUsersidToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :user_id, :integer
  end
end
