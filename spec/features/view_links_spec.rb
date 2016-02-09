require_relative '../spec_helper'

feature 'Links' do
  scenario 'can be saved and viewed' do
    save_link
    visit('/links')
    expect(page).to have_content 'Google'
    expect(page).to have_content 'www.google.co.uk'
  end
end
