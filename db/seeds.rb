
require "smarter_csv"

puts "Clearing data..."
Sighting.destroy_all



puts "🌱 Seeding sightings..."

# Seed your database here

sightings = SmarterCSV.process('./app/scrape/ufo-sightings-QueryResult.csv')

sightings.each do |sighting| 
    
    Sighting.create(sighting)
    end



    # puts "🌱 Seeding users..."
    # User.create(username: "roygbev", email: "bevin.duncan@gmail.com" )
    #add faker gems
    #do I need this? As discussed, we were just going to use one user_id for the purposes of not needing a sign-in etc...
    # puts "Creating users..."
    # 10.times do
    #     User.create(username: Faker::Internet.username, email: Faker::Internet.email)
    # end   

    #do I add a seeding framework for the submit or does that automatically update through CRUD? 
    #for the submit form do I need to add a username input so the submitted sighting links to a user? 
    #If so, how? is that no relevant right now since we're only using the one user_id? 
    

puts "✅ Done seeding!"
