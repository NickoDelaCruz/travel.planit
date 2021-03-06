require('spec_helper')

describe 'the user creation path', {:type => :feature} do
  it 'takes the user to the home page where they can create a user account to save trips' do
    visit '/'
    fill_in('name', :with => 'emily')
    click_button('SUBMIT')
    expect(page).to have_content('emily')
  end
end

describe 'the trip creation path', {:type => :feature} do
  it 'takes the user to the user page where they can create a trip' do
    test_user = User.create({:name => 'emily'})
    user_id = test_user.id.to_i
    visit "/users/#{user_id}"
    fill_in('trip_name', :with => 'portland')
    fill_in('latitude', :with => '45.5231')
    fill_in('longitude', :with => '-122.6765')
    click_button('SUBMIT')
    expect(page).to have_content('portland')
  end
end

describe 'the activity creation path', {:type => :feature} do
  it 'takes the user to the trip page where they can add an activity' do
    test_user = User.create({:name => 'emily'})
    test_trip = Trip.create({:destination => 'portland', :latitude => 45.5231, :longitude => -122.6765})
    trip_id = test_trip.id.to_i
    visit "/trips/#{trip_id}"
    fill_in('description', :with => 'eat')
    click_button('ADD')
    expect(page).to have_content('eat')
  end
end

describe 'the trips page path', {:type => :feature} do
  it 'takes the user to their trips page where they can see all saved trips' do
    test_user = User.create({:name => 'emily'})
    user_id = test_user.id.to_i
    test_trip = Trip.create({:destination => 'portland', :latitude => 45.5231, :longitude => -122.6765, :user_id => user_id})
    visit "/users/#{user_id}"
    click_link('Click here to see all of your trips')
    expect(page).to have_content('portland')
  end
end
