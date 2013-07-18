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

u1 = User.create(email: "test@example.com", password: "testtesttest", is_admin: true)
u2 = User.create(email: "john@altavista.com", password: "dinosaur")
u3 = User.create(email: "billyc@whitehouse.gov", password: "nafta123")

v1 = Vendor.create(name: "Amir's Falafel", address: "23rd and 6th Avenue, New York, NY")
v2 = Vendor.create(name: "Joe's Fruit Cart", address: "23rd and Broadway, New York, NY")
v3 = Vendor.create(name: "Andy's Refreshment Stand", address: "20th and 5th Avenue, New York, NY")
v4 = Vendor.create(name: "Korean Tacos", address: "Union Square, New York, NY")
v5 = Vendor.create(name: "Farmer's Market", address: "Union Square, New York, NY")
v6 = Vendor.create(name: "Malaysian Street Cart", address: "17th and 5th Avenue, New York, NY")
v7 = Vendor.create(name: "Chicken and Rice", address: "28th and Park Avenue, New York, NY")
v8 = Vendor.create(name: "Hooda Halal", address: "115th and Broadway, New York, NY")

m1 = Menuitem.create(name: "Hot dog", description: "100% beef", price: "2.50")
m2 = Menuitem.create(name: "Falafel wrap", description: "Comes with lettuce", price: "3")
m3 = Menuitem.create(name: "Chicken and rice", description: "Served with pita", price: "6")
m4 = Menuitem.create(name: "Mango", description: "Freshly picked", price: "1")
m5 = Menuitem.create(name: "Taco", description: "Served with kimchi", price: "5")
m6 = Menuitem.create(name: "Kale", description: "Great in smoothies", price: "6")
m7 = Menuitem.create(name: "Beef rendang", description: "Spicy", price: "8")
m8 = Menuitem.create(name: "Chicken sate", description: "Served with peanut sauce", price: "7")
m9 = Menuitem.create(name: "Lychee", description: "Delicious!", price: "1")

r1 = Review.create(text: "Great falafel", rating: "4")
r2 = Review.create(text: "Chicken and rice wasn't that good", rating: "2")
r3 = Review.create(text: "Hot dog was excellent", rating: "5")
r4 = Review.create(text: "Chicken was bland", rating:"1")
r5 = Review.create(text: "Food was great, nice and spicy", rating:"5")
r6 = Review.create(text: "Vendor rude to customers", rating:"1")
r7 = Review.create(text: "Andy is an angry guy", rating:"1")
r8 = Review.create(text: "Definitely returning, though the food was greasy", rating:"4")
r9 = Review.create(text: "Great tacos, terrible kimchi", rating:"3")
r10 = Review.create(text: "Nice!", rating:"4")
r11 = Review.create(text: "Disappointing produce", rating:"2")
r12 = Review.create(text: "Excellent fruit", rating:"5")

u1.vendors = [v1, v2, v3, v4, v8]
u2.vendors = [v5, v6, v7]

v1.menuitems = [m2, m3]
v2.menuitems = [m4, m6, m9]
v3.menuitems = [m1]
v4.menuitems = [m5, m9]
v5.menuitems = [m4, m6, m9]
v6.menuitems = [m4, m7, m8, m9]
v7.menuitems = [m3, m2]
v8.menuitems = [m2, m3]

v1.reviews = [r1, r2, r4]
v2.reviews = [r12]
v3.reviews = [r7, r1]
v4.reviews = [r9, r6]
v5.reviews = [r11]
v6.reviews = [r8]
v7.reviews = [r5, r10]
v8.reviews = [r3]

puts "All done"



