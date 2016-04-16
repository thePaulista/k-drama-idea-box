require "rails_helper"

feature "User can edit their idea" do
  scenario "see updated idea" do
    visit root_path

    click_on "I have an idea"
    fill_in "Title", with: "An Idea"
    fill_in "Description", with: "A Description"
    click_on "Submit"

    expect(page).to have_content "An Idea"
    expect(page).to have_content "A Description"

    click_on "Edit Idea"

    fill_in "Title", with:"Updated Title"
    fill_in "Description", with:"Updated Description"
    click_on "Submit"

    expect(page).to_not have_content "An Idea"
    expect(page).to have_content "Updated Title"
    expect(page).to have_content "Updated Description"
  end
end
