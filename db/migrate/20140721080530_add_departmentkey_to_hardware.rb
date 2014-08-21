class AddDepartmentkeyToHardware < ActiveRecord::Migration
  def change
    add_reference :hardwares, :department, index: true
  end
end
