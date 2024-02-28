# frozen_string_literal: true
require "geocoder"


class Location
  def initialize(location)
    @location = location
  end

  def time
  # Doesn't work for "America","Los Angeles". Need to figure out what in first location can work with Time.use_zone
    Time.use_zone(first_location.data["name"]) do
      Time.zone.now
    end
  end

  def full_details
    "#{first_location.data["name"]}, #{first_location.data.dig("address", "country")}"
  end

  def lat
    first_location.latitude
  end

  def lon
    first_location.longitude
  end

  # private

  attr_reader :location

  def result
    result = Geocoder.search(location)

    if result == []
      puts "No location matched, defaulting to Melbourne, AUS"
      result = Geocoder.search("Melbourne, Australia")
    end

    return result
  end

  # Find the first location
  def first_location
    @first_location ||= result.first
  end
end
