# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(name: "Jose",  email: "josese@gmail.com",  password: "aaaaaaaa")
u2 = User.create(name: "Jose2", email: "josese2@gmail.com", password: "aaaaaaaa")
u3 = User.create(name: "Jose3", email: "josese3@gmail.com", password: "aaaaaaaa")
Event.create(user: u1, user_target: u2)
Message.create(user: u1, body: "TEXTO1")
Message.create(user: u2, body: "TEXTO2")
Message.create(user: u2, body: "TEXTO3")