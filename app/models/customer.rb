class Customer < ActiveRecord::Base
  # Primary key to the customers table
  self.primary_key = :customer_id

  # Add the customer_id attribute
  attribute :customer_id, :integer

  # Add associations to the order table
  has_many :orders, foreign_key: :customer_id
end