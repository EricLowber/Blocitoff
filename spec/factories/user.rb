FactoryGirl.define do
  factory :user do
    name "Douglas Adams"
    sequence :email do |n| "email#{n}factory.com"
    password "helloworld"
    password_confirmation "helloworld"
    confirmed_at Time.now
   end
 end
end

