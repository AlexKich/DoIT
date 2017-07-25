class AddShopkeyToCleaning < ActiveRecord::Migration
  def change
    add_reference :cleanings, :shop, index: true
  end
end
