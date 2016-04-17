class Category < ActiveRecord::Base
  has_many :categoricals, dependent: :destroy
  has_many :ideas, through: :categoricals

  validates :name, presence: true, uniqueness: true
end
