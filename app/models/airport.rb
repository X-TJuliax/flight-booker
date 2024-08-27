class Airport < ApplicationRecord
    has_many :departed_flights, foreign_key: 'departure_flight_id', class_name: 'Flight'
    has_many :arrived_flights, foreign_key: 'arrival_flight_id', class_name: 'Flight'
end
