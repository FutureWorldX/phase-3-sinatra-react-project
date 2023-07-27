class Space < ActiveRecord::Base
  # Add a primary key to the spaces table
  self.primary_key = :space_id

  # Add the space_id attribute
  attribute :space_id, :integer
  
  # Add associations to Order and Customer tables
  has_one :order
  has_one :customer, through: :order
end