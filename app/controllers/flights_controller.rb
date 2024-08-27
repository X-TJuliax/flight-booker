class FlightsController < ApplicationController

    def index
        @flights = if params[:search].present?
            Flight.where("name LIKE ? OR airline_company LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
        else
            Flight.all
        end
        
        @flight_dates = Flight.select(:start_time).distinct.map { |f| f.start_time.to_date }.uniq

        if params[:departure_airport_id].present?
            @flights = @flights.where(departure_flight_id: params[:departure_airport_id])
        end
        
        if params[:arrival_airport_id].present?
            @flights = @flights.where(arrival_flight_id: params[:arrival_airport_id])
        end

        if params[:flight_date].present?
            @flights = @flights.where("DATE(start_time) = ?", params[:flight_date])
        end

    end

end
