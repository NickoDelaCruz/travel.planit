require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require 'pry'

get('/') do
  erb(:index)
end

post('/') do
  @user = params['name']
  erb(:user)
end

get('/user/:id') do
  @name = Name.find(params['id'].to_i)
  destination = params('destination')
  date = params('date')
  new_trip = Trip.find_or_create_by(:destination => destination, :date => date)
  erb(:trip)
end

post('/user/:id/trip') do
  @name = Name.find(params['id'].to_i)
  description = params('description')
  user_id = params('user_id')
  new_activity = Activity.find_or_create_by(:description => description, :user_id => user_id)
  erb(:trip)
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
