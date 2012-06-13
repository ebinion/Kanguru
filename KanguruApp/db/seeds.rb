# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ConditionalItem.delete_all
Transportation.delete_all

car_items = [
  {:name => "boot", :image => "car_icons_boot.png"},
  {:name => "coffee", :image => "car_icons_coffee.png"},
  {:name => "donut", :image => "car_icons_donut.png"},
  {:name => "jacket", :image => "car_icons_jacket.png"},
  {:name => "podcast", :image => "car_icons_podcast.png"},
  {:name => "umbrella", :image => "car_icons_umbrella.png"}
]

car = Transportation.create(:name => "Car", :condition => "rain", :image => "mode_car.png")

car_items.each do |item|
  ConditionalItem.create(:name => item[:name], :image => item[:image], :transportation_id => car.id)
end