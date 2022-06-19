FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "User#{n}" }
    sequence(:name) { |n| "Pupa#{n}" }
    sequence(:url) { |n| "https://#{n}.com" }
    sequence(:avatar_url) { |n| "https://#{n}.com/#{n}" }
    sequence(:provider) { |n| "github" }
  end
end
