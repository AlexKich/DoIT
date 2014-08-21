class AddDepcomToCoworker < ActiveRecord::Migration
  def change
    add_reference :coworkers, :department, index: true
    add_reference :coworkers, :company, index: true
  end
end
