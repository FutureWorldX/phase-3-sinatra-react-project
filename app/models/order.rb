class Orders < ActiveRecord::Base
  # Primary key for the orders table
  self.primary_key = :order_id

  # Add associations to customers and spaces tables
  belongs_to :customer, foreign_key: :customer_id
  belongs_to :space
end