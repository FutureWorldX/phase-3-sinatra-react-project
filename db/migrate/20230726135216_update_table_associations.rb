class UpdateTableAssociations < ActiveRecord::Migration[6.1]
  def change
    # Add foreign key to the orders table referencing the customers table
    add_reference :orders, :customer, foreign_key: true

    # Add foreign key to the orders table referencing the spaces table
    add_reference :orders, :space, foreign_key: true
  end
end
