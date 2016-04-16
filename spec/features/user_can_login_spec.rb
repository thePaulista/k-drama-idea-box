require "rails_helper"

feature "User can log into their account" do
  scenario "registered user can login" do
    user = User.create!(username: "useduser",
                        password: "password",
                        password_confirmation: "password")

    visit login_path

    fill_in "Username", with: "useduser"
    fill_in "Password", with: "password"
    click_on "Log In"

    expect(page).to have_content("Welcome Useduser")
  end
end



