require "faker"
#user
user = User.new(
  name: "Alice",
  email: "text@example.com",
  password: "test1234",
)
# user.skip_confirmation!
user.save!

#fake user
user = User.new(
  email: Faker::Internet.email,
  name:  Faker::Name.name,
  password: Faker::Internet.password(8)
)
# user.skip_confirmation!
user.save!

#to grab both users
users = User.all

#to create 5 lists per user
10.times do
  List.create!(
    title: Faker::Lorem.sentence,
    user: users.sample
  )
end

lists = List.all

#to create items per list
30.times do
  ListItem.create!(
    list: lists.sample,
    body: Faker::Lorem.paragraph,
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{ListItem.count} list items created"
