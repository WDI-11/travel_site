# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
City.destroy_all

atlanta = City.create(name: 'Atlanta', photo_url: 'https://i.imgur.com/jf9v1tz.jpg')
london = City.create(name: 'London', photo_url: 'https://i.imgur.com/MWuCmFY.jpg')
san_francisco = City.create(name: 'San Francisco', photo_url: 'https://i.imgur.com/SyqwfpR.jpg')
Post.create(title: 'This place sucks', review: 'It really really sucks', city_id:atlanta.id)
Post.create(title: 'C# Required', review: 'This place is awesome if you know C#.', city_id:atlanta.id)
Post.create(title: 'Joey Hurley Is Danny\'s Newest Clone', review: 'In 10-20 years, he will achieve consciousness and kill his older self, take over his life, and repeat the process in a different city.', city_id:atlanta.id)
Post.create(title: 'Good Place to Panhandle', review: 'I prefer the street across from Ponce City Market, where if the weather is bad, you can still turn people in and get them towed.', city_id:atlanta.id)
Post.create(title: 'This place sucks too', review: 'It really really sucks', city_id:london.id)
Post.create(title: 'Lost of unwashed hippies', review: 'Is there no shower here?', city_id: san_franciso.id)