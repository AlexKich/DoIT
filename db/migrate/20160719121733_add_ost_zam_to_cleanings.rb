class AddOstZamToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :ostzam, :string
  end
end
