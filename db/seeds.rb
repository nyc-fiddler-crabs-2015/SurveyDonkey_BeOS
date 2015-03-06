require 'faker'

50.times do

User.create(username: Faker::Name.first_name, password: "123", password_confirmation: "123", avatar: Faker::Avatar.image("my-own-slug"))
end