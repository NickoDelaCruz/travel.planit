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
