class HomeController < ApplicationController
  def index
    @message = "Edson's Weather App ☺"

    # https://api.openweathermap.org/data/2.5/weather?lat=-37.8136&lon=144.9631&appid=ab0c803febd21bec092009126752f607&units=metric

    # Pulling data from openWeather using API key and location of melbourne
    data = CurrentWeatherService.new(latitude: "-37.8136" , longitude: "144.9631" , units: "metric").call
    @weather = Weather.new(data)
  end
end
