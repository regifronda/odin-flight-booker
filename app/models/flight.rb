class Flight < ApplicationRecord
  belongs_to :departure_airport, foreign_key: "departure_airport_id", class_name: "Airport"
  belongs_to :arrival_airport, foreign_key: "arrival_airport_id", class_name: "Airport"

  def flight_date_formatted
    self.start_datetime.strftime("%d/%m/%Y")
  end
end