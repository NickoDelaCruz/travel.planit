#!/usr/bin/env ruby

require 'net/http'
require 'open-uri'
require 'json'
require 'pp'
require 'pry'

class GetWeather
  attr_accessor :lat, :lng

  def initialize(attributes)
    @lat = attributes[:lat]
    @lng = attributes[:lng]
  end

  darksky = "https://api.darksky.net/forecast/"
  key = "c8ab0a54e45119b58c074c1c58bb855a"
  @lat = nil
  @lng = nil
  uri = darksky + key + "/" + @lat.to_s + "," + @lng.to_s
  URL = uri.concat('?&exclude=minutely,hourly')

  def get_weather
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  binding.pry
  def forecast
    weather = JSON.parse(self.get_weather)

    summary = weather['currently']['summary']
    icon = weather['currently']['icon']
    temperature = weather['currently']['temperature']

    collected_weather = { 'summary' => summary, 'icon' => icon, 'temperature' => temperature }
  end
end

# weather = GetWeather.new()
# puts weather.forecast
