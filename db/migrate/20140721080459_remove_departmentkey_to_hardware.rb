class RemoveDepartmentkeyToHardware < ActiveRecord::Migration
  def change
    remove_column :hardwares, :department_id, :integer
  end
end
