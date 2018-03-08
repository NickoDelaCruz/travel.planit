require('spec_helper')

describe 'the user creation path', {:type => :feature} do
  it 'takes the user to the home page where they can create a user account to save trips' do
    visit '/'
    fill_in('name', :with => 'emily')
    click_button('Submit')
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
    click_button('Submit')
    expect(page).to have_content('portland')
  end
end
