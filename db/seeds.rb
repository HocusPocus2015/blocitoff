# admin user
#admin =User.create!(
#  name: "Admin",
#  email: "alicesuckling@live.co.uk",
#  password: "test1234",
#  )

require "faker"
5.times do |fake|
  user = User.create(
    email: "#{fake}@example.com",
    password: "test1234"
    )
    user.save!
  end
#to create 5 users
users = Users.all

10.times do
  List.create!(
    list: lists.sample,
    body: Faker::Lorem.paragraph
    )
  end
#to create two lists per user

lists = List.all

30.times do#
  ListItem.create!(
    list: lists.sample,
    body: Faker::Lorem.paragraph
    )
  end
#to create 3 items per list

puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{ListItem.count} list items created"
