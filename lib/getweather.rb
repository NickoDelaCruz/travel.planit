#!/usr/bin/env ruby

require 'net/http'
require 'open-uri'
require 'json'
require 'pp'
require 'pry'

class GetWeather

  darksky = "https://api.darksky.net/forecast/"
  key = "c8ab0a54e45119b58c074c1c58bb855a"
  lat = 37.8267
  lng = -122.4233
  uri = darksky + key + "/" + lat.to_s + "," + lng.to_s
  URL = uri.concat('?&exclude=minutely,hourly')

  def get_weather
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def forecast
    weather = JSON.parse(self.get_weather)

    summary = weather['currently']['summary']
    icon = weather['currently']['icon']
    temperature = weather['currently']['temperature']

    collected_weather = { 'summary' => summary, 'icon' => icon, 'temperature' => temperature }
  end
end

weather = GetWeather.new
puts weather.forecast
