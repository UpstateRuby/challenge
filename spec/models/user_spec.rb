require 'rails_helper'

describe User, type: :model do
  context "Associations" do
    it { should have_many(:challenges) }
  end
end
