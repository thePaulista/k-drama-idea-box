require 'rails_helper'

feature "User with account can create idea" do
  scenario "successfully" do
    user = User.create!(user_attributes)

    sign_in(user)

    expect(Page).to have_content "Welcome Useduser"

    click_link "Create new idea"

    expect(page).to have_content "Descendants of the Sun"

  end
end
