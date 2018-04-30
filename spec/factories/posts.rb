FactoryBot.define do
  factory :post do
	sequence(:title) { |n| "Post#{n}" }
    content "MyText"
	association :user, factory: :user
  end
end
