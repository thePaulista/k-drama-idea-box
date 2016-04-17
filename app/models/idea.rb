class Idea < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :users

  has_many :categoricals, dependent: :destroy
  has_many :categories, through: :categoricals
end
