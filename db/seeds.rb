# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SkillMaster.create!([
  {name: "Linux"},
  {name: "Windows"},
])

User.create!({username: "test" , email:"test@test.com", password:"testtest"})
User.first.skills.create!({skill_master_id: 1 , age: 1 , level:1})
User.first.create_profile!( {disp_name: "test" , birth: "1981-12-14", biography: "よろしく"})
User.first.works.create!( [
  {title: "Enfollio" , description: "エンジニアのためのポートフォリオ作成サービスです", url: "http://localhost:3001/", source_url:"https://github.com/nakagon"}
])
