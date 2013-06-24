FactoryGirl.define do
  factory :user do
    name "User1"
    email "something@email.com"
    password "sample"
    password_confirmation "sample"
  end
end
