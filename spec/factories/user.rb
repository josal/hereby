FactoryGirl.define do
  factory :user do
    id       1
    email    "test@test.com"
    name     "Test user name"
    password "thisissecret"
  end

  factory :user2, class: 'User' do
    id       2
    email    "test2@test.com"
    name     "Test2 user name"
    password "thisissecret2"
  end

end