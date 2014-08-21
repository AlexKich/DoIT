class CreateCoworkers < ActiveRecord::Migration
  def change
    create_table :coworkers do |t|
      t.string :coworker_name
      t.string :location

      t.timestamps
    end
  end
end
