FactoryGirl.define do
  factory :user do
    name "User1"
    email "something@email.com"
    password "sample12345"
    password_confirmation "sample12345"
  end
end
