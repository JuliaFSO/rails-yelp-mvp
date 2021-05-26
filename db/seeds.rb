puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
camelos = { name: "Camelos", address: "Jardins", category: "italian"}
pizzahut =  { name: "Pizza Hut", address: "Moema", category: "french"}
milenovencetos =  { name: "1900", address: "Vila Madalena", category: "japanese"}
bras =  { name: "Bras", address: "Bexiga",category: "belgian"}


[ camelos, pizzahut, milenovencetos, bras ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
