class Categorical < ActiveRecord::Base
  belongs_to :idea
  belongs_to :category
end
