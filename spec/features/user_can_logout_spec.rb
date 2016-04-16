require 'rails_helper'

feature 'User can log out of a session' do
  scenario 'user is redirected to the homepage after logout' do
    user = User.create!(user_attributes)

    sign_in(user)

    expect(page).to have_content("Welcome Useduser")

    click_on "Log Out"

    expect(page).to have_content("Successfully logged out!")
    expect(page).to_not have_content("Welcome Useduser")
  end
end
