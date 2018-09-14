require 'spec_helper'
require 'rails_helper'

feature 'the signup process' do 

  scenario 'has a new user page' do
    visit new_user_url
    expect(page).to have_content('Sign Up')
    expect(page).to have_content('Username')
    expect(page).to have_content('Password')
  end 
  
  feature 'signing up a user' do
    before(:each) do
      visit new_user_url
      fill_in 'username', with: 'aa'
      fill_in 'password', with: '123456'
      click_on 'Create New Account'
    end
    scenario 'shows username on the homepage after signup' do
      expect(page).to have_content('aa')
    end
  end 
end 

feature 'logging in' do
  before(:each) do
    visit new_session_url
    fill_in 'username', with: 'dd'
    fill_in 'password', with: '123456'
    click_on 'Login'
  end 
  scenario 'shows username on the homepage after login' do 
    expect(page).to have_content('dd')
  end 

end

feature 'logging out' do
  scenario 'begins with a logged out state'

  scenario 'doesn\'t show username on the homepage after logout'

end