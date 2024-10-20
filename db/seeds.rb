# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "DELETING DB"
Location.delete_all
Restaurant.delete_all
Guest.delete_all
Category.delete_all
Task.delete_all
Concierge.delete_all

puts "CREATING DB"
puts 'Creating Concierges...'
@filepath = "./db/fixtures/concierges.json"
@serialized_concierges = File.read(@filepath)
@concierges = JSON.parse(@serialized_concierges)
@all_concierges = []
@concierges.each do |row|
  @all_concierges << Concierge.create!(firstname: row['first_name'],
    lastname: row['last_name'], email: row['email'])
end

puts 'Creating Tasks...'
@filepath = "./db/fixtures/tasks.json"
@serialized_tasks = File.read(@filepath)
@tasks = JSON.parse(@serialized_tasks)
@all_tasks = []
@tasks.each do |row|
  @all_tasks << Task.create!(taskType: row['taskType'])
end

puts 'Creating Categories...'
@filepath = "./db/fixtures/categories.json"
@serialized_categories = File.read(@filepath)
@categories = JSON.parse(@serialized_categories)
@all_categories = []
@categories.each do |row|
  @all_categories << Category.create!(segment: row['segment'])
end

puts 'Creating Guests...'
@filepath = "./db/fixtures/guests.json"
@serialized_guests = File.read(@filepath)
@guests = JSON.parse(@serialized_guests)
@all_guests = []
@guests.each do |row|
  @all_guests << Guest.create!(first_name: row['first_name'],
    last_name: row['last_name'])
end

puts 'Creating Locations...'
@filepath = "./db/fixtures/locations.json"
@serialized_locations = File.read(@filepath)
@locations = JSON.parse(@serialized_locations)
@places = []
@locations.each do |row|
  @places << Location.create!(city: row['city'])
end

puts 'Creating Restaurants...'
@filepath = "./db/fixtures/restaurants.json"
@serialized_restaurants = File.read(@filepath)
@restaurants = JSON.parse(@serialized_restaurants)
@restos = []
@restaurants.each do |row|
  @restos << Restaurant.create!(restaurant_name: row['restaurant_name'],
    location_id: row['location_id'],
    city: row['city']
    )
end
