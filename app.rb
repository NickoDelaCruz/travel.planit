require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/weather') do
  erb(:weather)
end

post('/weather') do
  latitude = params[:latitude]
  longitude = params[:longitude]
  new_weather = Weather.create(:latitude => latitude, :longitude => longitude)
  @current = new_weather.forecast
  erb(:weather)
end
