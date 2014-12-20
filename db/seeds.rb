require 'faker'

#create lists
20.times do 
List.create!(
  name:  Faker::Lorem.word
  )
end

#create items
100.times do
  Item.create!(
    body: Faker::Lorem.sentence
    )
end

# Create Users
5.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all


# Create an admin user
admin = User.new(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  # role:     'admin'
)
admin.skip_confirmation!
admin.save!


puts "Seed finished"
puts "#{List.count} lists created."
puts "#{Item.count} items created." 
puts "#{User.count} users created."


