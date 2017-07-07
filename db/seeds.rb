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

# categories = Category.create(
#   [{name: "胸", user: u1}, {name: "背", user: u1}, {name: "腿", user: u1}, {name: "其他", user: u1}]
# )
# exercises = Exercise.create([
#   {name: "深蹲", user: u1, category: categories[2]},
#   {name: "硬舉", user: u1, category: categories[2]},
#   {name: "臥推", user: u1, category: categories[0]}
# ])
cate1 = Category.find_or_create_by(name: '胸')
cate1.user = u1
exercise1 = Exercise.find_or_create_by(name: '臥推')
exercise1.user =  u1
cate1.exercises << exercise1
cate1.save

cate2 = Category.find_or_create_by(name: '背')
cate2.user = u1
exercise2 = Exercise.find_or_create_by(name: '槓鈴划船')
exercise2.user =  u1
cate2.exercises << exercise2
cate2.save

cate3 = Category.find_or_create_by(name: '腿')
cate3.user = u1
exercise3 = Exercise.find_or_create_by(name: '深蹲')
exercise3.user =  u1
cate3.exercises << exercise3
exercise4 = Exercise.find_or_create_by(name: '硬舉')
exercise4.user =  u1
cate3.exercises << exercise4
cate3.save
