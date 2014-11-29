FactoryGirl.define do 
  factory :user do
    name "John Fahey"
    sequence(:email, 1000) { |n| "person#{n}@example.com" }
    password "password"
    password_confirmation "password"
    confirmed_at Time.now
  end
end

