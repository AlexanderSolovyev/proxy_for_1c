class ChangeColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :tel, :phone
    rename_column :orders, :full, :bottles
    rename_column :orders, :empty, :returned_bottles
    remove_column :orders, :city
    remove_column :orders, :street
    remove_column :orders, :home
    remove_column :orders, :kv
    remove_column :orders, :flower
    rename_column :orders, :note, :information
    add_column :orders, :firm, :string
    add_column :orders, :vitenumber, :string
    add_column :orders, :delivery_address, :string
    add_column :orders, :delivery_time, :string
  end
end
