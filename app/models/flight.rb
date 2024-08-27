class Flight < ApplicationRecord
    belongs_to :departure_flight, foreign_key: 'departure_flight_id', class_name: 'Airport'
    belongs_to :arrival_flight, foreign_key: 'arrival_flight_id', class_name: 'Airport'

    has_many :bookings
    has_many :passengers, through: :bookings
end
