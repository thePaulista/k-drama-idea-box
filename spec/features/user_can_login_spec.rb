require "rails_helper"

feature "user can log into their account" do
  scenario "user can see their profile page once logged in" do
 visit root_path

 click_on "Log In"

 fill_in "Username", with: "user"
 fill_in "Password", with: "password"

 click_on "Submit"

  end
  end



