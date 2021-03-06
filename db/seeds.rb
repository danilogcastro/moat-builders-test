# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding users..."
User.create!(email: 'admin@admin.com', password: '123456', username: 'admin', full_name: 'Admin', role: 'admin')
User.create!(email: 'user@user.com', password: '123456', username: 'user', full_name: 'user', role: 'user')
puts "Done!"