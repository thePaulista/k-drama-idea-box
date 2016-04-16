class User < ActiveRecord::Base
  has_secure_password
  has_many :ideas

  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum: 5, allow_blank: true } #allow blank in case the username alone is being updated
  validates :password_digest, presence: true
  validates :password_confirmation, presence: true
end
