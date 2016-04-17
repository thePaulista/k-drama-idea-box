def user_attributes(overrides = {})
  {
    username: "useduser",
    email:    "user@example.com",
    password: "password",
    password_confirmation: "password"
  }.merge(overrides)
end


def idea_attributes(overrrides = {})
  {
    title: "Descendants of the Sun",
    description: "Love story in a the post-Cold War"
  }
end
