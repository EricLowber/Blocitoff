require 'faker'

FactoryGirl.define do 
  factory :list do |f|
    f.name { Faker::Lorem.word }
    user
  end  
end