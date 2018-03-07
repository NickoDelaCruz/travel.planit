require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
require 'pry'

get('/') do
  erb(:index)
end

post('/users') do
  name = params['name']
  user = User.create(:name => name)
  redirect("/users/".concat(user.id.to_s))
end

get('/users/:id') do
  @user = User.find(params['id'].to_i)
  erb(:user)
end

post('/users/:id') do
  destination = params['trip_name']
  date = params['start_date']
  user_id = params['user_id']
  trip = Trip.create(:destination => destination, :date => date, :user_id => user_id)
  redirect("/trips/".concat(trip.id.to_s))
end

get('/trips/:id') do
  @activities = Activity.all
  @user = User.find(params['id'].to_i)
  @trip = Trip.find(params['id'].to_i)
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
