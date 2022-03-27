class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @departure_airport_options = Airport.all.map { |d| [ d.airport_code, d.id ] }
  end
end
