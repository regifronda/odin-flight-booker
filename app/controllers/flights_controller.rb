class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map { |d| [ d.airport_code, d.id ] }
  end

  private

  def flight_params
    params.permit(:departure_airport_id, :arrival_airport_id)
  end

  def departure_time_params
    params.permit(:start_datetime)
  end
end
