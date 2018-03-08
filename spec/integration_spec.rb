require('spec_helper')

describe 'the user creation path', {:type => :feature} do
  it 'takes the user to the home page where they can create a trip' do
    visit '/'
    fill_in('name', :with => 'john')
    click_button('Submit')
    expect(page).to have_content('john')
  end
end
