FactoryBot.define do
  factory :challenge do
    sequence(:id) { |n| n }
    sequence(:name) { |n| "challenge#{n}" }
    rules { "some rules" }
    duration_in_days { 100 }
    association :user
  end
end
