class AddManagerFioToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :manager_fio, :string
    add_column :providers, :manager_phone, :string
    add_column :providers, :it_phone, :string
  end
end
