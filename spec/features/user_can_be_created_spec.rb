require 'rails_helper'

feature "Creating a new user" do
  scenario "saves the user and shows the user's profile page" do
    visit root_url

    click_link 'Sign Up'

    fill_in "Username",  with: "paulista"
    fill_in "Email",  with: "user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    click_button "Create Account"


    expect(page).to have_text('Welcome Paulista')
    #expect(page).to have_text('Thanks for signing up!')
  end

  scenario "missing fields cannot create a user" do
    visit root_url

    click_link "Sign Up"

    fill_in "Username", with: " "
    fill_in "Email",  with: "user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    click_button "Create Account"

    expect {click_button "Create Account"}.not_to change(User, :count)

    #expect(page).to have_text("Username can't be blank")
  end

  scenario "mismatched password cannot create a user" do
    visit root_url

    click_link "Sign Up"
    fill_in "Username", with: "user"
    fill_in "Email",  with: "user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "secrets"

    expect { click_button "Create Account" }.not_to change(User, :count)
  end
end
