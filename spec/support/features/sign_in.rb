module Features
  def sign_in
    visit root_path
    fill_in "Username", with: "user"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_on "Log In"
  end
end
