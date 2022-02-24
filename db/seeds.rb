# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all
Airport.reset_pk_sequence
Airport.create([{ airport_code: 'SFO' }, { airport_code: 'NYC'}, { airport_code: 'HND'}, { airport_code: 'MEL'}, { airport_code: 'SYD'}])

Flight.delete_all
25.times do
  (1..5).to_a.each do |i|
    destinations = (1..5).to_a
    destinations.delete(i)
    Flight.create(departure_airport_id: i, arrival_airport_id: destinations.sample, start_datetime: DateTime.now + rand(100..600), duration: "05:30:00")
  end
end

p "Created #{Airport.count} airport entries and #{Flight.count} flight entries."