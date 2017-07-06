# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(
  email: "u1@workout.com",
  password: "111111",
  password_confirmation: "111111")
u2 = User.create!(email: "u2@workout.com",
  password: "111111",
  password_confirmation: "111111")

categories = Category.create(
  [{name: "胸", user: u1}, {name: "背", user: u1}, {name: "腿", user: u1}, {name: "其他", user: u1}]
)
exercises = Exercise.create([
  {name: "深蹲", user: u1, category: categories[2]},
  {name: "硬舉", user: u1, category: categories[2]},
  {name: "臥推", user: u1, category: categories[0]}
])
