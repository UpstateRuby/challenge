require 'rails_helper'

describe Challenges::Create, type: :model do
  context "Validations" do
    it { should validate_presence_of(:name) }
    it do
      should validate_length_of(:name).
      is_at_most(255)
    end
    it { should validate_presence_of(:rules) }
    it { should validate_presence_of(:duration_in_days) }
    it do
      should validate_numericality_of(:duration_in_days).
      is_greater_than(0).only_integer
    end
  end
end
