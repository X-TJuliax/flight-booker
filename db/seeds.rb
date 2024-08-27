# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.create!(code: 'Ade', address: '5070 Royston park')
Airport.create!(code: 'NYC', address: '100A swift street')
Airport.create!(code: 'Jap', address: 'Toyko airport')


Flight.create!(start_time: '2024-08-24, 22:00', duration: '12:00', departure_flight_id: 1, arrival_flight_id: 2, name: 'Virgin 2070', airline_company: 'Australia virgin airline')
Flight.create!(start_time: '2024-08-31, 09:00', duration: '18:00', departure_flight_id: 2, arrival_flight_id: 3, name: 'Usa 2077', airline_company: 'American airline')
