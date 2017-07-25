class AddProviderIdToShops < ActiveRecord::Migration
  def change
    add_column :shops, :provider_id, :integer
  end
end
