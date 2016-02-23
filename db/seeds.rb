# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.create!(first_name:  "Darth",
             last_name: "Vader",
             midichlorians:              5,
             level: 5,
             lightsaber: 5,
             force: 'Dark')

            
User.create!(first_name:  "Luke",
             last_name: "Skywalker",
             midichlorians:              3,
             level: 4,
             lightsaber: 5,
             force: 'Light')

User.create!(first_name:  "Mace",
             last_name: "Windu",
             midichlorians:              2,
             level: 4,
             lightsaber: 5,
             force: 'Light')

User.create!(first_name:  "Obi-Wan",
             last_name: "Kenobi",
             midichlorians:              4,
             level: 4,
             lightsaber: 5,
             force: 'Light')	

User.create!(first_name:  "Darth",
             last_name: "Sidious",
             midichlorians:              2,
             level: 4,
             lightsaber: 5,
             force: 'Dark')				 
			
User.create!(first_name:  "Master",
             last_name: "Yoda",
             midichlorians:              4,
             level: 5,
             lightsaber: 5,
             force: 'Light')

User.create!(first_name:  "Qui-Gon",
             last_name: "Jinn",
             midichlorians:              3,
             level: 4,
             lightsaber: 5,
             force: 'Light')

User.create!(first_name:  "Anakin",
             last_name: "Skywalker",
             midichlorians:              5,
             level: 2,
             lightsaber: 5,
             force: 'Light')



User.create!(first_name:  "Darth",
             last_name: "Maul",
             midichlorians:              2,
             level: 3,
             lightsaber: 5,
             force: 'Dark')			 			 
			
			
			
99.times do |n|

User.create!(first_name:  "Example User",
             last_name: "example",
             midichlorians:              2,
             level: 3,
             lightsaber: 4,
             force: 'Light')
end