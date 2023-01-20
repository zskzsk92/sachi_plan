FactoryBot.define do
  factory :task_list do
    title{Faker::Lorem.characters(number: 30)}
    association :user
  end
end
