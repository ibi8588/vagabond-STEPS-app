# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
city_list = [
{ city:"Kauia", state:"Hawaii", country:"USA", photo: "https://traveldigg.com/wp-content/uploads/2016/07/Kauai-Island-Waterfall-in-Hawaii.jpg" },
{ city:"San Francisco", state:"California", country:"USA", photo: "http://baycityguide.com/media/00PU000000GrBwfMAF/Red-&-White-U-turn-under-GOLDEN-GATE.jpg"  },
{ city:"Paris", state: "Île-de-France", country:"France", photo: "http://www.francetourisme.fr/images/soirees_a_paris/diner_croisiere/bateaux_mouches_paris_18h.jpg" },
{ city:"Kralendijk", state: "Bonaire", country:"Netherlands", photo: "http://www.tourismbonaire.com/includes/images/gallery/BonaireCaribbean_3.jpg" },
{ city: "Puerto Vallarta", state:"Jalisco", country:"Mexico", photo: "http://hotelcrownparadiseclubpuertovallarta.com/filesystem/club-puerto-vallarta/blog-club-pv/puerto-vallarta-articulo.png" }
]

city_list.each do |c, s, cn|
  City.create(city: c, state: s, country: cn)
end

User.destroy_all

user_list = [
  { first_name: "Joe", last_name:"Cool",password_digest: "easy", profile_pic: "http://thecabin.net/sites/default/files/styles/teaser__620x350/public/images/3077531_web1_1024x1024.jpg?itok=1D9QhzEy", email: "ed8588@gmail.com" },
  { first_name: "Natalie", last_name:"Jones",password_digest: "easy", profile_pic: "http://i.huffpost.com/gen/1127670/thumbs/o-OLDER-WOMAN-facebook.jpg", email: "spamvacuum888@gmail.com" },
  { first_name: "William", last_name:"Smith",password_digest: "easy", profile_pic: "http://thecabin.net/sites/default/files/styles/teaser__620x350/public/images/3077531_web1_1024x1024.jpg?itok=1D9QhzEy", email: "ibrahim.aldridge@gmail.com" },
  { first_name: "Sally", last_name:"Smith",password_digest: "easy", profile_pic: "http://www.stylishwife.com/wp-content/uploads/2013/07/Hairstyles-For-Older-Women-3.jpg", email: "westcaostswing@gmail.com" },
  { first_name: "Dan", last_name:"Daniels",password_digest: "easy", profile_pic: "http://www.ris.world/sites/default/files/o-OLD-GENTLEMAN-facebook.jpg", email: "bestdayever@gmail.com" },
]

user_list.each do |f,l,pass,pic,em|
  User.create(first_name: f, last_name: l, password_digest: pass, profile_pic: pic, email: em)
end
