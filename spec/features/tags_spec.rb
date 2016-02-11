feature 'Tags' do
  scenario 'add tag to link' do
    fill_in_form
    fill_in(:tags, with: 'Search')
    click_button 'Save'

    link = Link.first
    expect(link.tags.map(&:name)).to include 'Search'
  end
end
