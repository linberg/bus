class TripsController < ApplicationController
  def index
    @cities = City.all
  end

  def calculate
    @origin = City.find_by(id: params[:trip][:origin_city])
    @destination = City.find_by(id: params[:trip][:destination_city])
    adelaide_cairo_express(@origin, @destination)
  end

  def adelaide_cairo_express(origin, destination)
    origin.update_columns(time: 1, cost: 25) if (origin.name == 'Adelaide' && destination.name == 'Cairo')
  end
end
