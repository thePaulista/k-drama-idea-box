# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
piper = User.create(username: "piper", email: "piper@example.com", password_digest: "password", password_confirmation: "password")


piper.ideas.create(title: "Title", description: "Description")
piper.ideas.create(title: "Title1", description: "Description1")
piper.ideas.create(title: "Title2", description: "Description2")
piper.ideas.create(title: "Title3", description: "Description3")


scout = User.create(username: "scout", email: "scout@example.com", password_digest: "password", password_confirmation: "password")


scout.ideas.create(title: "Title", description: "Description")
scout.ideas.create(title: "Title1", description: "Description1")
scout.ideas.create(title: "Title2", description: "Description2")


mark = User.create(username: "mark", email: "mark@example.com", password_digest: "password", password_confirmation: "password")

mark.ideas.create(title: "Title1", description: "Description1")
mark.ideas.create(title: "Title2", description: "Description2")
mark.ideas.create(title: "Title3", description: "Description3")
