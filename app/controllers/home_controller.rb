class HomeController < ApplicationController
  API_KEY = "ab0c803febd21bec092009126752f607"
  def index
    @message = "Edson's Weather App"

    # Pulling data from openWeather using API key and location of melbourne
    @data = CurrentWeatherService.new(latitude: "-37.8136" , longitude: "144.9631" , units: "metric", api_key: API_KEY).call

  end
end
