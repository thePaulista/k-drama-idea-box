require 'rails_helper'

feature 'User can submit kdrama idea' do
  scenario 'visit a form to submit a kdrama submit' do
    title = "Murderous Rampage in Joseon Dynasty"
    description = "Historical drama set in Joseon dynasty"

    visit ideas_path
    click_on "I have an idea"
    fill_in "title", with: pitch_title
    fill_in "description", with: pitch_description
    click_on "Submit"

    within("li:first")
    expect(page).to have_content pitch_title
    expect(page).to have_content pitch_description
  end
end


