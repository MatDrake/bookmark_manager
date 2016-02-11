feature 'Tags' do
  scenario 'add tag to link' do
    fill_in_form
    fill_in(:tags, with: 'Search')
    click_button 'Submit'
    within'ul' do
      expect(page).to have_content 'Tags: Search'
    end
  end
end
