FactoryGirl.define do
  factory :message do
    comment { Faker::Pokemon.name }
    image { fixture_file_upload('spec/fixtures/img/sample01.jpg', 'image/jpg') }

    after(:build) do |message|
      message.user_id = create(:user).id
      message.group_id = create(:group, :with_group_members).id
    end
  end
end