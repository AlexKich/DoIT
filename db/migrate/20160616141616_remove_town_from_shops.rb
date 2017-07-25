class RemoveTownFromShops < ActiveRecord::Migration
  def change
    remove_column :shops, :town, :integer
  end
end
