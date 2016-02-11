def save_link
  visit('/links/new')
  fill_in('name', with: 'Google')
  fill_in('link', with: 'www.google.co.uk')
  click_button('save')
end
