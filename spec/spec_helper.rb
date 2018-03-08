ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config| # clear db between spec runs
  config.after(:each) do
    User.all.each do |user|
      user.destroy
    end
    Trip.all.each do |trip|
      trip.destroy
    end
    Activity.all.each do |activity|
      activity.destroy
    end
  end
end
