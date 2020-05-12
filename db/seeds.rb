require 'faker'
User.destroy_all
Event.destroy_all
Attendance.destroy_all



20.times do
User.create(
  first_name: Faker::Name.middle_name,
  last_name: Faker::TvShows::DrWho.specie,
  description: Faker::TvShows::Buffy.quote, 
  email:  Faker::Internet.email,
  encrypted_password: Faker::Code.imei
)

end



5.times do
Event.create(
    start_date: Faker::Date.forward(days: 80),
    duration: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    title: Faker::Music::Opera.verdi, 
    description: Faker::Restaurant.review,
    price: Faker::Number.between(from: 1, to: 1000), 
    location: Faker::TvShows::Stargate.planet
    )
end



20.times do
  Attendance.create(user: User.all[rand(0..19)], event: Event.all[rand(0..4)], stripe_customer_id: Faker::Number.within(range: 1..1000))
end
