# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Vendor.delete_all
Menuitem.delete_all
Review.delete_all

u1 = User.create(name: "Anuj", password: "jhunjhunwala", is_admin: true)

v1 = Vendor.create(name: "Amir's Falafel", address: "23rd and 6th avenue, New York, NY")
v2 = Vendor.create(name: "Joe's Fruit Cart", address: "23rd and Broadway, New York, NY")
v3 = Vendor.create(name: "Andy's Refreshment Stand", address: "20th and 5th Avenue, New York, NY")

m1 = Menuitem.create(name: "Hot dog", description: "100% beef hot dog", price: "2.50")
m2 = Menuitem.create(name: "Falafel wrap", description: "Comes with lettuce", price: "3")
m3 = Menuitem.create(name: "Chicken and rice", description: "White sauce", price: "6")
m4 = Menuitem.create(name: "Mango", description: "Juicy", price: "1")

r1 = Review.create(text: "Great falafel", rating: "4")
r2 = Review.create(text: "Chicken and rice wasn't that good", rating: "2")
r3 = Review.create(text: "Hot dog was excellent", rating: "5")
r4 = Review.create(text: "Chicken tasted weird", rating:"1")

u1.vendors = [v1, v2, v3]

v1.menuitems = [m2, m3]
v2.menuitems = [m4]
v3.menuitems = [m1, m4]

v1.reviews = [r1, r2, r4]
v3.reviews = [r3]

puts "All done"



