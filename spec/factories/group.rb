FactoryGirl.define do
  factory :group do
    name  { Faker::Name.first_name }

    trait :with_group_members do
      after(:build) do |group|
        group.user_ids << build(:user).id
      end
    end
  end
end
