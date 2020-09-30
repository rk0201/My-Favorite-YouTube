# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
   email: 'test1@test.com',
   name: 'テスト1',
   login_id: 'test1',
   password: 'test01',
)

User.create!(
   email: 'test2@test.com',
   name: 'テスト2',
   login_id: 'test2',
   password: 'test02',
)

User.create!(
   email: 'test3@test.com',
   name: 'テスト3',
   login_id: 'test3',
   password: 'test03',
)

User.create!(
   email: 'test4@test.com',
   name: 'テスト4',
   login_id: 'test4',
   password: 'test04',
)
