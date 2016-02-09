require_relative '../spec_helper'

feature 'Links' do
  Link.all.destroy
  scenario 'add links'do
    visit('/links/new')
    fill_in('name', with: 'Google')
    fill_in('link', with: 'www.google.co.uk')
    click_button('save')
    expect(page).to have_content('Link Saved!')
  end
  
  scenario 'can be viewed' do
    visit('/links')
    expect(page).to have_content 'Google'
    expect(page).to have_content 'www.google.co.uk'
  end
end
