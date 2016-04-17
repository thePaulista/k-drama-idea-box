require 'rails_helper'

RSpec.describe User, type: :model do
  it "requires a name" do
    user = User.new(username: " ")

    user.valid?

    expect(user.errors[:username].any?).to eq(true)
  end

  it "requires an email" do
    user = User.new(password_digest: " ")

    user.valid?

    expect(user.errors[:password_digest].any?).to eq(true)
  end

  it "requires a password confirmation when password is present" do
    user = User.new(password: 'password', password_confirmation: " " )

    user.valid?

    expect(user.errors[:password_confirmation].any?).to eq(true)
  end


  it "requires a password and matching password confirmation" do
    user = User.create!(username: "hedy", email: "hedy@example.com", password: "password", password_confirmation: "password")

    expect(user.valid?).to eq(true)
  end

  it "encrypts password to password_word digest" do
    user = User.new(password: "password")

    expect(user.password_digest.present?).to eq(true)
  end
end


#TODO add should validation for has many idea
