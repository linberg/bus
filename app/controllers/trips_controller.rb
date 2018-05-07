class TripsController < ApplicationController
  def index
    @cities = City.all
  end

  def calculate
  end
end
