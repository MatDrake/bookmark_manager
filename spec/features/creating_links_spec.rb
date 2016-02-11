
feature 'create links form' do
  scenario 'add title and url' do
    fill_in_form
    click_button('Save')
    expect(page).to have_content("Google")
  end
end
