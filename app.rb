require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require 'pry'

get('/') do
  erb(:index)
end

get('/activities') do
  erb(:activities)
end

get('/user') do
  erb(:trips)
end

get('/weather') do
  @current = {}
  erb(:weather)
end

post('/weather') do
  latitude = params[:latitude]
  longitude = params[:longitude]
  new_weather = Weather.create(:latitude => latitude, :longitude => longitude)
  @current = new_weather.forecast

  erb(:weather)
end
