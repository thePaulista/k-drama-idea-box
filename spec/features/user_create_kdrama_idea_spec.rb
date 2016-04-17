require 'rails_helper'

feature 'User can submit kdrama idea' do
  scenario 'visit a form to submit a kdrama submit' do
    user = User.create!(user_attributes)

    sign_in(user)

    click_on "Create an Idea"
    fill_in "Title", with: pitch_title
    fill_in "Description", with: pitch_description
    click_on "Submit"

    expect(page).to have_content pitch_title
    expect(page).to have_content pitch_description
  end

  scenario "partial forms cannot be sumitted" do
    pitch_description = "Historical drama set in Joseon dynasty"

    visit ideas_path

    click_on "I have an idea"

    expect new_idea_path

    fill_in "Description", with: pitch_description
    click_on "Submit"

    expect new_idea_path
    expect(page).to_not have_content pitch_description
  end
end


