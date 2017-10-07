class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.string :full
      t.string :empty
      t.string :city
      t.string :street
      t.string :home
      t.string :kv
      t.string :flower
      t.string :note

      t.timestamps
    end
  end
end
