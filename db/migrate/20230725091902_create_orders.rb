class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :status
      t.integer :quantity
      t.integer :price
      t.text :description
      t.timestamps
    end
  end
end