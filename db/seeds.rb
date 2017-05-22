# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.create(code: "BKI")
Airport.create(code: "SIN")
Airport.create(code: "KL")
Airport.create(code: "NYC")
Airport.create(code: "LAX")

Flight.create(departing_airport_id: 1, arriving_airport_id: 2, departure_date: Date.new(2017,5,19) , duration: 2.hours.to_i)

5.times{|i|Flight.create(departing_airport_id: 2, arriving_airport_id: 5, departure_date: Date.new(2017,5,20) , duration: 9.hours.to_i)}

Flight.create(departing_airport_id: 3, arriving_airport_id: 1, departure_date: Date.new(2017,5,18) , duration: 12.hours.to_i)
Flight.create(departing_airport_id: 4, arriving_airport_id: 1, departure_date: Date.new(2017,5,19) , duration: 13.hours.to_i)
