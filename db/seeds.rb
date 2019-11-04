# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.create!(:name => 'ユーザー１', :email => '1a@gmail.com', :password => 111111,date: "毎週木曜日午後5時〜8時", prace:"庄内緑地公園",volume: 30,content:"楽しくテニスをしています。",rink: "http://ibuki-study.net",free:"自由に詳細を記入してください！")
Team.create!(:name => 'ユーザー2', :email => '2a@gmail.com', :password => 222222,date: "毎週木曜日午後6時〜8時", prace:"庄内公園",volume: 20,content:"楽しくテニスしています。",rink: "http://ibuki-study.net",free:"自由に詳細を記入してください！")
Team.create(:name => 'ユーザー3', :email => '3a@gmail.com', :password => 333333,date: "毎週木曜日午後7時〜8時", prace:"緑地公園",volume: 303,content:"テニスをしています。",rink: "http://ibuki-study.net",free:"自由に詳細を記入してください！")
Team.create(:name => 'ユーザー4', :email => '4a@gmail.com', :password => 444444,date: "毎週木曜日午後5時〜9時", prace:"庄地公園",volume: 10,content:"楽しくテニスをしています",rink: "http://ibuki-study.net",free:"自由に詳細を記入してください！")
Team.create(:name => 'ユーザー5', :email => '5a@gmail.com', :password => 555555,date: "毎週h曜日午後5時〜8時", prace:"内緑公園",volume: 5,content:"楽しくテニスをしています。",rink: "http://ibuki-study.net",free:"自由に詳細を記入してください！")
Team.create(:name => 'ユーザー6', :email => '6a@gmail.com', :password => 666666,date: "毎週i曜日午後5時〜8時", prace:"地公園",volume: 30,content:"楽しくテニスをしています。aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",rink: "http://ibuki-study.net",free:"自由に詳細を記入してください！")
Team.create(:name => 'ユーザー7', :email => '7a@gmail.com', :password => 777777,date: "毎週j曜日午後5時〜8時", prace:"庄公園",volume: 50,content:"楽しくテニスをしています。",rink: "http://ibuki-study.net",free:"自由に詳細を記入してください！")
Team.create(:name => 'ユーザー8', :email => '8a@gmail.com', :password => 888888,date: "毎週k曜日午後5時〜8時", prace:"緑公園",volume: 2,content:"楽しくテニスをしています。",rink: "http://ibuki-study.net",free:"自由に詳細を記入してください！")

Event.create(name: "a1",date: "毎週木曜日午後5時〜8時",price: 100,detail: '細かい内容は頑張る',rink: 'https://ibuki-study.net',locate:"名古屋大学" ,team_id: 1)
Event.create(name: "a2",date: "木曜日午後5時〜8時",price: 200,detail: '細かい内容は頑張2',rink: 'https://ibuki-study.net',locate:"名古屋大学", team_id: 2)
Event.create(name: "a3",date: "毎週木曜日午後5時",price: 130,detail: 'かい内容は頑張る3aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',rink: 'https://ibuki-study.net', team_id: 1)
Event.create(name: "a4",date: "毎週木曜日午後5時〜8時",price: 140,detail: '細かい内容は頑張る4',rink: 'https://ibuki-study.net',locate:"名古屋大学",  team_id: 1)
Event.create(name: "a5",date: "毎週木曜日午後5時〜8時",price: 500,detail: '細かい内容は頑張る5',rink: 'https://ibuki-study.net', team_id: 4)
Event.create(name: "a6",date: "毎週木曜日午後5時〜8時",price: 600,detail: '細かい内容は頑張る6',rink: 'https://ibuki-study.net', team_id: 3)
Event.create(name: "a7",date: "毎週木曜日午後5時〜8時",price: 0,detail: '細かい内容は頑張る7',rink: 'https://ibuki-study.net', team_id: 2)
Event.create(name: "a8",price: 500, team_id: 3)


%W[A大 B大 C大 D大 E大 F大].each { |a| University.create(name: a) }

TeamUniversity.create!(team_id: 1, university_id:1)
TeamUniversity.create!(team_id: 1, university_id:2)
TeamUniversity.create(team_id: 2, university_id:1)
TeamUniversity.create(team_id: 3, university_id:1)
TeamUniversity.create(team_id: 2, university_id:3)
