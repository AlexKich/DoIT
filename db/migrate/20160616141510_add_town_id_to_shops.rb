class AddTownIdToShops < ActiveRecord::Migration
  def change
    add_column :shops, :town_id, :integer
  end
end
