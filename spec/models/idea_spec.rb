require 'rails_helper'

RSpec.describe Idea, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    #  it { is_expected.to  belong_to(:users) }
  end
end


#TODO shoulda matchers to belongs to assocation not passing.  check syntax
