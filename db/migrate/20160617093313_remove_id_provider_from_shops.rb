class RemoveIdProviderFromShops < ActiveRecord::Migration
  def change
    remove_column :shops, :id_provider, :integer
  end
end
