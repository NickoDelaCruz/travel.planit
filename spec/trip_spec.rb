require('spec_helper')

describe(Trip) do

  describe('#get_weather') do
    it('will return API response') do
      new_trip = Trip.new(:latitude => 45.5231, :longitude => -122.6765)
      # new_weather = new_trip.get_weather(45.5231, -122.6765)
      expect(new_trip.get_weather).to respond_with_content_type(:json)
    end
  end
  # describe('#get_weather') do
  #   it { is_expected.to respond_with_content_type(:json) }
  # end

end


# https://api.darksky.net/forecast/c8ab0a54e45119b58c074c1c58bb855a/45.5231,-122.6765
