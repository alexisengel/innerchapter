Brand.destroy_all
Brand.create(name: "Nike")
Project.create(name: "Jordans", start_date: Date.today, end_date: Date.today + 10, brand: Brand.last)
tasks = ["blog about what getting a new pair of shoes feels like",		
"video of them going to the store and debating what shoes to get",		
"picture of sneaker collection"]
tasks.each do |task|
	Task.create(name: task, category: ["picture", "video", "blog"].sample, project: Project.last)
end

10.times do
	User.create(username: Faker::Internet.username(5..8), dob: Faker::Date.birthday(18, 65), city: Faker::Address.city, email: Faker::Internet.email, encrypted_password: Faker::Internet.password(8))
end

puts "created #{User.count} people"