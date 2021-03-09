# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: "Active")
Category.create(name: "Romance")
Category.create(name: "Outdoor")

Category.first.activities.create(name: "Yoga at Inspire 9", address: "1/41-43 Stewart St, Richmond VIC 3121", description: "Do yoga with friends!")
Category.find(2).activities.create(name: "Cute dinner with Thembi", address: "4/3 Murphy St, South Yarra VIC 3141", description: "Have a cute dinner with Thembi (pop the question at this romantic venue ;)")
Category.last.activities.create(name: "Walking at the Dandenongs", address: "School Rd, Tremont VIC 3786", description: "Go for a walk through the bush!")
