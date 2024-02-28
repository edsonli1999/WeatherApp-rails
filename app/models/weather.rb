# frozen_string_literal: true

# Presentor pattern: taking the json data and wrapping it into a ruby object, making it more intuitive in
# views/home/index.html.erb page. When someone who hasn't worked on this project before now looks at that
# html page, they won't need to insert a raise to find out what @data contains
class Weather
  def initialize(data)
    @data = data
  end

  def icon_url
    # current_weather['icon'] === @data["weather"].first["icon"]
    "http://openweathermap.org/img/wn/#{current_weather['icon']}@2x.png"
  end

  def description
    current_weather["description"]
  end

  def location
    "#{data['name']}, #{data.dig("sys","country")}"
  end

  def temperature
    # data['main']['temp']
    data.dig('main', 'temp')
  end

  def feels_like
    # data['main']['feels_like']
    data.dig('main', 'feels_like')
  end

  private

  attr_reader :data

  def current_weather
    @current_weather ||= data["weather"].first
  end
end
