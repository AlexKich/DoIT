class RemoveStreetFromShops < ActiveRecord::Migration
  def change
    remove_column :shops, :street, :integer
  end
end
