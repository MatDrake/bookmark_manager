def fill_in_form
  visit('/links/new')
  fill_in(:title, with: "Google")
  fill_in(:url, with: "http://google.com")
end
