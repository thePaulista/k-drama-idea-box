require 'rails_helper'

feature 'User can edit an existing account' do
  scenario 'updated account is viewable' do
    user = User.create!(user_attributes)

    sign_in(user)

    click_link "Edit Account"

    within('h1') {
      expect(page).to have_content("Edit account")
    }

    fill_in "Username", with: "newuser"
    fill_in "Email", with: "email@email.com"

    click_on "Update account"

   #expect(page).to have_content("Account successfully updated!")
    expect(page).to have_content("Newuser")
    expect(page).to have_content("email@email.com")

  end
end

