class AdddeliveryDateToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :delivery_date, :string
  end
end
