# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'pry'

25.times do
  Member.create(name: Faker::Name.first_name)
end

puts "members created"
#gardens
Garden.create(name: "Danny Woo International District Community Gardens", address: "620 S Main St, Seattle, WA 98104", description: "T​he Danny Woo Community Garden was founded in 1975 and is located in Seattle’s Chinatown-International District at 620 South Main Street. The Garden is approximately 1.5 acres and contains nearly 100 plots that are cultivated and cared for by elderly Asian immigrant residents of the neighborhood. The garden is also home to a childrens garden, chicken coop, outdoor kitchen, and fruit tree orchard. As the largest green space in the Chinatown/International District and Little Saigon area, the Danny Woo Community Garden is an essential place for the surrounding community to engage with nature, access safe and healthy food, and build cohesion with neighbors.")

Garden.create(name: "Beacon Food Forest", address: "15TH Ave S S Dakota St, Seattle, WA 98104", description: "The goal of the Beacon Food Forest is to design, plant and grow an edible urban forest garden that inspires our community to gather together, grow our own food and rehabilitate our local ecosystem. Join us to improve public health by regenerating our public land into an edible forest ecosystem. We work to reduce agricultural climate impact, improve our local food security, provide educational opportunities, and celebrate growing food for the benefit of all species.")

# Garden.create(name: "Botanical Gardens Bellevue", address: "12001 Main Street
# Bellevue WA 98005", description: "Bellevue Botanical Garden displays the best plants and gardening practices for healthy, beautiful Northwest gardens. Visitors are encouraged to participate in Garden volunteerism, events and programs that are engaging, educational and inspiring. The Bellevue Botanical Garden Society was founded in 1984 by Iris and Bob Jewett, with the idea to build and support a free public botanical garden for their local community. It came to fruition when Harriet and Cal Shorts generously donated their home and 7.5 acres to develop the Bellevue Botanical Garden. The Society was then incorporated in January 1986 as a non-profit organization. Since 1992, in partnership with the City of Bellevue, more than 45 acres have been added to the Garden. Today, the 53-acre Bellevue Botanical Garden is a world-renowned community treasure for everyone to enjoy.")

# Garden.create(name: "Tilth Alliance", address: "12001 Main Street
# Bellevue WA 98005", description: "At Tilth Alliance we want everyone to eat well every day. We’re nurturing a culture where nutritious food is front and center, and available to everyone, and recognize this vision is not possible without  successful regional farmers and a healthy planet. It’s no secret that the ways we currently produce food is creating all sorts of problems – for people’s health, for farmers and for the environment. Tilth Alliance is changing the way food is grown, distributed and eaten.")

# Garden.create(name: "Magnuson Community Garden", address: "6344 NE 74th St Sand Point, WA 98005", description: "Magnuson Community Garden is a four acre multipurpose community garden located on Seattle’s Sand Point Peninsula. Designed with the entire community in mind, the garden has an outdoor amphitheater for concerts and events, a children’s garden, a native plant demonstration area, a native plant nursery, a demonstration orchard and a p-patch.")

plant_names = ["Fennel", "Spinach", "Romaine", "Kale", "Green Beans", "Cucumbers", "Yellow Summer Squash", "Radishes", "Carrots", "Bell Peppers", "Tomatoes", "Sunflower", "Rose", "Garlic", "Chives", "Basil", "Dahlia", "Tulip"]

scale = ["low", "medium", "high"]
puts "gardens created"




# Plant.create(name: "Fennel", img_url: "http://lorempixel.com/250/250/nature/", date_planted: "11/19/19", height: 2, water: "low", sunlight: "low", member_id: 1)

# Plant.create(name:  "Tulip", img_url: "http://lorempixel.com/250/250/nature/", date_planted: "11/19/19", height: 2, water: "low", sunlight: "low", member_id: 1)

# Plant.create(name: "Rose", img_url: "http://lorempixel.com/250/250/nature/", date_planted: "11/19/19", height: 2, water: "low", sunlight: "low", member_id: 1)


#plots
# 20.times do
#   Plot.create(garden_id: rand(1..6), plot_number: rand(1-25), occupied: false)
# end

danny_woo_p1 = Plot.create(garden_id: 1 , plot_name: "Danny Woo Gardens - Plot 1", occupied:false)
danny_woo_p2 = Plot.create(garden_id: 1, plot_name: "Danny Woo Gardens - Plot 2", occupied:false)
danny_woo_p3 = Plot.create(garden_id: 1, plot_name: "Danny Woo Gardens - Plot 3", occupied:false)
danny_woo_p4 = Plot.create(garden_id: 1, plot_name: "Danny Woo Gardens - Plot 4", occupied:false)

beaconff_p1 = Plot.create(garden_id: 2, plot_name: "Beacon Food Forest - Plot 1", occupied:false)
beaconff_p2 = Plot.create(garden_id: 2, plot_name: "Beacon Food Forest - Plot 2", occupied:false)
beaconff_p3 = Plot.create(garden_id: 2, plot_name: "Beacon Food Forest - Plot 3", occupied:false)
beaconff_p4 = Plot.create(garden_id: 2, plot_name: "Beacon Food Forest - Plot 4", occupied:false)

puts "plots created"

#membersplots
8.times do
  MembersPlots.create(member_id: rand(1..20), plot_id: rand(1..8))
end
puts "membersplots created"


#plants
25.times do
  
    seed = (0...50).map { ('a'..'z').to_a[rand(26)] }.join

    Plant.create(name: plant_names.sample, img_url: "https://picsum.photos/seed/#{seed}/250", height: Faker::Measurement.height, water: scale.sample, sunlight: scale.sample, member_id: rand(1..20), plot_id:rand(1..8))
  end


# Plant.create(name: "Carrot", img_url: "http://lorempixel.com/250/250/nature/", height: 2, water: "low", sunlight: "medium", member_id: 1, plot_id: 1)

puts "plants created"
