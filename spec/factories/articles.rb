FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:content) { |n| "My text content #{n}" }
    sequence(:slug) { |n| "ak-47-#{n}" }
  end
end
