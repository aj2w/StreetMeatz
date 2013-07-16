# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

v1 = Vendor.new
v1.name = "Fruit Stand"
v1.address = "23rd and Broadway, New York City"
v1.save

v2 = Vendor.new
v2.name = "Halal Cart"
v2.address = "19th and 5th Avenue, New York City"
v2.save

