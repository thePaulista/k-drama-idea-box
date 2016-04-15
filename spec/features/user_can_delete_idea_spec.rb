require 'rails_helper'

feature "user can delete idea" do
  scenario "idea does not appear in the index of ideas" do
   idea = Idea.create!(title: "A drama", description: "A description")
    visit idea_path(idea)

    click_link "Delete Idea"

    expect(page).to_not have_text "A drama"
    expect(page).to_not have_text "A description"
  end
end
