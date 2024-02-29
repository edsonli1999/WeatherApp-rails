require "geocoder"

class HomeController < ApplicationController
  def index
    @message = "Edson's Weather App ☺"

    # Pulling the latitude and longtitude from the user


    # Time.use_zone('asdadasdadas') do
    #   puts Time.zone.now
    # end

    @curr_location = Location.new("Bedok")

    # Pulling data from openWeather using API key and location of melbourne
    data = CurrentWeatherService.new(latitude: @curr_location.lat , longitude: @curr_location.lon , units: "metric").call
    @weather = Weather.new(data)
  end
end
