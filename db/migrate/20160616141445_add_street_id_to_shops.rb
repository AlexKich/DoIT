class AddStreetIdToShops < ActiveRecord::Migration
  def change
    add_column :shops, :street_id, :integer
  end
end
