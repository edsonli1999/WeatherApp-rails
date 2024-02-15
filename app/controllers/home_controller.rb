class HomeController < ApplicationController
  def index
    @message = "Edson's Weather App"

    # Pulling data from openWeather using API key and location of melbourne
    @data = CurrentWeatherService.new(latitude: "-37.8136" , longitude: "144.9631" , units: "metric").call

  end
end
