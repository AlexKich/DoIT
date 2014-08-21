class AddCoworkerkeyToHardware < ActiveRecord::Migration
  def change
    add_reference :hardwares, :coworker, index: true
  end
end
