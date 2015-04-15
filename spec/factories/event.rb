FactoryGirl.define do
  factory :follow, class: 'Event' do
    user_id 1
    user_target_id 2
  end
end
