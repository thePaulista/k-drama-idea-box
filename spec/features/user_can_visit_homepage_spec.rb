require 'rails_helper'

feature "User can visit homepage" do
  scenario "for the kdrama idea box" do
    visit root_path

    expect(page).to have_css 'h1', text: "KDrama Idea Box"
  end
end
