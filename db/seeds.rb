puts "🌱 Seeding spices..."

# Seed your database here

# Seed data for Customer table
Customers.create!(
  name: "John Doe",
  phone_no: 12345,
  id_number: 12345,
  email_address: "john@example.com",
  po_box: "P.O. Box 00",
  local_address: "Main Street",
  county: "Nairobi",
  city: "Nairobi"
)

# Seed data for Order table
Orders.create!(
  name: "Sample Order",
  status: "Occupied",
  quantity: 5,
  price: 100,
  description: "Sample order description"
)

Spaces.create!(
  space_type: "Standard",
  size: "Medium",
  style: "Modern",
  price_per_unit: 100,
  length: 10,
  width: 8,
  height: 10,
  location: "Business District",
  description: "Medium-sized modern shelf space"
)

# Seed data for Customer table
Customers.create!(
  name: "Jane Doe",
  phone_no: 123456,
  id_number: 123456,
  email_address: "jane@example.com",
  po_box: "P.O. Box 000",
  local_address: "Main Street",
  county: "Mombasa",
  city: "Mombasa"
)

# Seed data for Order table
Orders.create!(
  name: "Sample Order",
  status: "Occupied",
  quantity: 5,
  price: 100,
  description: "Sample order description"
)

Spaces.create!(
  space_type: "Deluxe",
  size: "Large",
  style: "Modern",
  price_per_unit: 150,
  length: 10,
  width: 8,
  height: 10,
  location: "Business District",
  description: "Large-sized modern shelf space"
)

puts "✅ Done seeding!"
