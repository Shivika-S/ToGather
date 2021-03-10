# require 'csv'

# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Category.delete_all
Activity.delete_all
User.delete_all

User.create(email: "userone@user.com", password: "password")
User.create(email: "visitor@user.com", password: "password")
User.create(email: "usertwo@user.com", password: "password")

Category.create(name: "Active")
Category.create(name: "Romance")
Category.create(name: "Outdoorsy")
# # Category.create(name: "Chill")
# # Category.create(name: "Lit")

# Active Category
Category.first.activities.create(name: "Yoga at Inspire 9", address: "1/41-43 Stewart St, Richmond VIC 3121", description: "Do yoga with friends!")
Category.first.activities.create(name: "Workout with The Rock", address: "367 Flinders St, Melbourne VIC 3000", description: "Work on your Gainz or just stare at The Rock all day and be aroused.")
Category.first.activities.create(name: "Pole Dancing", address: "111 Cecil St, South Melbourne VIC 3205", description: "Twerk them calories away!")
Category.first.activities.create(name: "Learn how to roundhouse kick", address: "191 Racecourse Rd, Kensington VIC 3031", description: "Come and learn how to roundhouse kick like the undefeated intergalactic champion, Chuck Norris!")
Category.first.activities.create(name: "Salsa dancing", address: "1/281 Swan St, Richmond VIC 3121", description: "Learn how to move your body like an elegant, majestic Swan from the legendary, Damian Lonel.")
Category.first.activities.create(name: "Cocktails and Zumba", address: "130 Gladstone St, South Melbourne VIC 3205", description: "Cocktails and Zumba? Yes.")

# Romance Category
Category.find_by(name: "Romance").activities.create(name: "Cute dinner with Thembi", address: "4/3 Murphy St, South Yarra VIC 3141", description: "Have a cute dinner with Thembi (pop the question at this romantic venue ;)")
Category.find_by(name: "Romance").activities.create(name: "Meet the love guru", address: "1/41-43 Stewart St, Richmond VIC 3121", description: "The love guru, Akash. Will be giving a lecture on how to find love.")
Category.find_by(name: "Romance").activities.create(name: "Married at first sight experience", address: "234 Elgar Rd, Box Hill South VIC 3128", description: "Show up, get married and see how you go.")
Category.find_by(name: "Romance").activities.create(name: "Couples Olympics", address: "Melbourne Cricket Ground", description: "Bring your self and your partner and achieve couples greatness.")
Category.find_by(name: "Romance").activities.create(name: "#InstaWorthy", address: "525 Collins St, Melbourne VIC", description: "Let us take you to all the most romantic locations in Melbourne so you can take memorable snaps with your partner")
Category.find_by(name: "Romance").activities.create(name: "Netflix and chill.. on a roof", address: "252 Swanston St, Melbourne VIC 3000", description: "Take your Netflix and chill game to the next level, literally. Enjoy the outdoor cinema on top or spend the night viewing the city lights.")


# Outdoorsy Category
Category.find_by(name: "Outdoorsy").activities.create(name: "Walking at the Dandenongs", address: "School Rd, Tremont VIC 3786", description: "Go for a walk through the bush!")
Category.find_by(name: "Outdoorsy").activities.create(name: "Tour d'Altona", address: "2 Clarendon St, Melbourne", description: "An evening ride on bike paths to Williamstown and Altona. Some cycling on the road on the return.")
Category.find_by(name: "Outdoorsy").activities.create(name: "Try Dragon Boat Racing!", address: "912 Collins Street, Docklands VIC", description: "Looking for a new sport? Are you ready to be fun, fit and active? Want to see if you've got what it takes to work hard in a team? This might just be your thing.")
Category.find_by(name: "Outdoorsy").activities.create(name: "Naked skydiving", address: "1421 Barwon Heads Rd, Connewarre VIC 3227", description: "Skydiving with clothes on is so mainstream.")
Category.find_by(name: "Outdoorsy").activities.create(name: "Beach Party!! - MC Shiv", address: "St Kilda", description: "St Kilda beach")
Category.find_by(name: "Outdoorsy").activities.create(name: "Amazing Race!", address: "Federation Square", description: "Expirience what it's like to be in the amazing race. Race around Melbourne solving clues and beating challenges.")


# Scraping data tha relates to outdoor related activities.
response = HTTParty.get('https://api.meetup.com/outdoors-adventure/events?page=20')
filepath = File.join(__dir__, 'activities.csv')

CSV.open(filepath, "wb") do |csv|
    csv << %w[name start_time description url latitude longitude status ]
    response.each do |activity|
      csv << [activity["name"], activity["local_time"], activity["description"], activity["link"], activity["venue"]["lat"], activity["venue"]["lon"], activity["status"]]
    end
  end

  csv_options = { headers: :first_row, header_converters: :symbol }
  CSV.foreach(filepath, csv_options) do |row|
    Category.find_by(name: "Outdoorsy").activities.create!(
        # category: Category.first,
        name: row[:name],
        start_time: row[:start_time],
        description: row[:description],
        url: row[:url],
        latitude: row[:latitude].to_f,
        longitude: row[:longitude].to_f,
        status: row[:status]
    )
  end