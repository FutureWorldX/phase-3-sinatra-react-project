class UpdateTableAssociations < ActiveRecord::Migration[6.1]
  def change
    # Add the customer_id column to the orders table
    add_column :orders, :customer_id, :integer

    # Add the foreign key constraint to the orders table
    add_foreign_key :orders, :customers
  end
end
