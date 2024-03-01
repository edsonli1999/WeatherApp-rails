require "geocoder"

class HomeController < ApplicationController
  def index
    @message = "Edson's Weather App ☺"

    # Default location for initial load
    @curr_location = Location.new("Melbourne")

    # Pulling data from openWeather using API key and location of melbourne
    data = CurrentWeatherService.new(latitude: @curr_location.lat , longitude: @curr_location.lon , units: "metric").call
    @weather = Weather.new(data)
  end

  def getLocation

    @message = "Edson's Weather App ☺"

    @location = params[:location]

    # Pulling the latitude and longtitude from the user
    @curr_location = Location.new(@location)

    # Pulling data from openWeather using API key and location of melbourne
    data = CurrentWeatherService.new(latitude: @curr_location.lat , longitude: @curr_location.lon , units: "metric").call
    @weather = Weather.new(data)

    puts "Hi! The location you wanted is: #{@curr_location}"
  end
end
