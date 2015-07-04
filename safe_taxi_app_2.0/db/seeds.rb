# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.find_by(id: 1)

Friend.delete_all

Friend.create(name: 'Erika', phone_number: '07525005484', user_id: user.id)

puts 'Seeded'
