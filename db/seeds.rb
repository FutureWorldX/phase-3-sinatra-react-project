puts "🌱 Seeding spices..."

# Seed your database here

# Seed data for Customer table
Customers.create!(
  name: "John Doe",
  phone_no: 000000,
  id_number: 00000,
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

puts "✅ Done seeding!"
