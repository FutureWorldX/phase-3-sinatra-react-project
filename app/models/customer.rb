class Customers < ActiveRecord::Base
  # Primary key to the customers table
  self.primary_key = :customer_id

  # Add associations to the order table
  has_many :orders, foreign_key: :customer_id
end