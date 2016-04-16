require 'rails_helper'

feature 'User can destroy own account' do
  scenario 'profile page is no longer be viewable' do
    user = User.create!(user_attributes)

    sign_in(user)

    click_on "Delete Account"

    expect(page).to_not have_content("Welcome Useduser")
    expect(page).to have_content("KDrama Idea Box")
    expect(page).to have_content("Sign Up")
  end
end
