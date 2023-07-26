class Spaces < ActiveRecord::Base
  # Add a primary key to the spaces table
  self.primary_key = :space_id

  # Add associations to Order and Customer tables
  has_one :order
  has_one :customer, through: :order
end