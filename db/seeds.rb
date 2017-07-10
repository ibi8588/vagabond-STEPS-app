# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
city_list = [
{ city:"Kauia", state:"Hawaii", country:"USA", photo: ""},
{ city:"San Francisco", state:"California", country:"USA" },
{ city:"Paris", state: "Île-de-France", country:"France" },
{ city:"Kralendijk", state: "Bonaire", country:"Netherlands" },
{ city: "Puerto Vallarta", state:"Jalisco", country:"Mexico" }
]

city_list.each do |city, state, country|
  City.create(city: city, state: state, country: country)
end
User.destroy_all
user_list = [
  { first_name: "Joe", last_name:"Cool",password_digest: "easy", profile_pic: "http://thecabin.net/sites/default/files/styles/teaser__620x350/public/images/3077531_web1_1024x1024.jpg?itok=1D9QhzEy", email: "ed8588@gmail.com" }
]
