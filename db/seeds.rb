# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: "Ram", password: "1111")
# User.create(username: "Shyam", password: "1111")
# User.create(username: "Krishna", password: "1111")
# User.create(username: "Shiv", password: "1111")

Message.create(body: "Hi How are you?", user_id: 1)
Message.create(body: "Fine!! What about you guys?", user_id: 2)
Message.create(body: "Yes! Cool", user_id: 3)
Message.create(body: "I am fine, Thanks", user_id: 4)