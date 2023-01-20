FactoryBot.define do
  factory :card do
    content {Faker::Lorem.characters(number: 30)}
    memo {Faker::Lorem.characters(number: 1000)}
    association :task_list

    after(:build) do |card|
      card.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
