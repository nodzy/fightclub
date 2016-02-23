


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
             force: 'Light',
			 picture: File.open(Rails.root + "./db/macewindu.jpg"))

User.create!(first_name:  "Obi-Wan",
             last_name: "Kenobi",
             midichlorians:              4,
             level: 4,
             lightsaber: 5,
             force: 'Light',
			 picture: File.open(Rails.root + "./db/obiwan.jpg"))	

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
             force: 'Light',
			 picture: File.open(Rails.root + "./db/quigon.jpg"))

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
			
			

			
			
5.times do
2.times do
 first_name  = Faker::Name.first_name
 last_name  = Faker::Name.last_name
User.create!(first_name: first_name,
             last_name: last_name,
             midichlorians:              2,
             level: 3,
             lightsaber: 4,
             force: 'Light')
end
2.times do
 first_name  = Faker::Name.first_name
 last_name  = Faker::Name.last_name
User.create!(first_name: first_name,
             last_name: last_name,
             midichlorians:              1,
             level: 2,
             lightsaber: 3,
             force: 'Dark')

end
2.times do
first_name  = Faker::Name.first_name
 last_name  = Faker::Name.last_name
User.create!(first_name: first_name,
             last_name: last_name,
             midichlorians:              2,
             level: 1,
             lightsaber: 4,
             force: 'Light')
end
end			
