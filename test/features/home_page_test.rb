require "test_helper"

feature "HomePage" do
  scenario "visit the home page" do
    visit root_path
    page.must_have_content "Hello World"
  end
end
