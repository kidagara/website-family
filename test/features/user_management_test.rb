require "test_helper"

feature "User Management" do
  scenario "view user list" do
    visit users_path
    page.must_have_content "Users"
    page.must_have_link "Create a New User"
    fill_in :login, with: "mmouse"
    fill_in :password, :password_confirmation, with: "password"
    fill_in :name, with: "Mickey Mouse"
    fill_in :email, with: "mmouse@disney.com"
    click_button :submit
    page.must_have_content "Mickey Mouse successfully created"
  end

  scenario "create a new user" do
    visit users_path
    click_link "Create a New User"
    page.must_have_content "New User"
  end

end
