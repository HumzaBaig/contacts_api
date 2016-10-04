# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: 'Alex')
User.create!(username: 'Bob')
User.create!(username: 'Charlie')
User.create!(username: 'David')
User.create!(username: 'Eric')
User.create!(username: 'Fred')
User.create!(username: 'George')

Contact.create!(name: 'Harold', email: 'harold@gmail.com', user_id: 1)
Contact.create!(name: 'Isaac', email: 'i@gmail.com', user_id: 1)
Contact.create!(name: 'Jake', email: 'jake.com', user_id: 2)
Contact.create!(name: 'Kevin', email: 'k', user_id: 3)

ContactShare.create!(contact_id: 1, user_id: 4)
ContactShare.create!(contact_id: 2, user_id: 5)
ContactShare.create!(contact_id: 3, user_id: 6)
ContactShare.create!(contact_id: 4, user_id: 7)
ContactShare.create!(contact_id: 4, user_id: 6)
