class HomeController < ApplicationController
  def index
    @message = "Edson's Weather App"

    # Pulling data from openWeather using API key and location of melbourne
    url = "https://api.openweathermap.org/data/2.5/weather?lat=-37.8136&lon=144.9631&appid=ab0c803febd21bec092009126752f607&units=metric"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)

  end
end
