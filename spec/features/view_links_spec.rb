require_relative '../spec_helper'

feature 'Links' do
  Link.all.destroy
  Link.create(id: 1, name: 'Google', link: 'www.google.co.uk')

  scenario 'can be viewed' do
    visit('/links')
    expect(page).to have_content 'Google'
    expect(page).to have_content 'www.google.co.uk'
  end
end
