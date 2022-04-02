
require "smarter_csv"

puts "Clearing data..."
Sighting.destroy_all



puts "🌱 Seeding sightings..."

# Seed your database here

sightings = SmarterCSV.process('./app/scrape/ufo-sightings-QueryResult.csv')

sightings.each do |sighting| 
    Sighting.create(sighting)
    end


puts "✅ Done seeding!"
