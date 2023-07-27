class Order < ActiveRecord::Base
  # Primary key for the orders table
  self.primary_key = :order_id

  # Add the customer_id attribute
  attribute :customer_id, :integer

  # Add the order_id attribute
  attribute :order_id, :integer

  # Add associations to customers and spaces tables
  belongs_to :customer, foreign_key: :customer_id
  belongs_to :space
end