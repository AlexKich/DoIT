class AddMinusCheckToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :minuscheck, :string
  end
end
