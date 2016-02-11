def fill_in_form
  visit('/links/new')
  fill_in(:name, with: "Google")
  fill_in(:link, with: "http://google.com")
end
