#frozen_string_literal: true

class CurrentWeatherService

  BASE_URL = "https://api.openweathermap.org/data/2.5/weather?"
  # Fetches the API key from .env file
  # API_KEY = ENV["OPENWEATHER_API_KEY"]
  API_KEY = "ab0c803febd21bec092009126752f607"

  def initialize(latitude: , longitude: , units: "metric")
    @latitude = latitude
    @longitude = longitude
    @units = units
  end

  def call
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

  private

  attr_reader :latitude, :longitude, :units

  def uri
    return @uri if defined?(@uri)
    @uri = URI(BASE_URL)
    params = { lat: latitude, lon: longitude, units: units, appid: API_KEY}
    @uri.query = URI.encode_www_form(params)
    @uri
  end

end
