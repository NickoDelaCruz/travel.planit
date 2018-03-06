require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
# require("./lib/________")
require("shoulda-matchers")
require("pry")
require("pg")

DB = PG.connect({:dbname => "travel_planit_test"})

get('/') do
  erb(:index)
end

get('/get_weather') do
  erb(:get_weather)
end

post('/get_weather') do
  latitude = params[:latitude]
  longitude = params[:longitude]
  new_weather = GetWeather.new(:lat => latitude, :lng => longitude)
  @current = new_weather.forecast
  erb(:get_weather)
end
