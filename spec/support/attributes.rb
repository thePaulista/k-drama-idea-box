def user_attributes(overrides = {})
  {
    username: "useduser",
    email: "user@example.com",
    password: "password",
    password_confirmation: "password"
  }.merge(overrides)
end
