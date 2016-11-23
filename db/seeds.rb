# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    User.create!(name:  "程虎子",
                 email: "example@railstutorial.org",
                 grade: "2014级",
                 college: "核科学与技术学院",
                 password:              "foobar",
                 password_confirmation: "foobar")

	99.times do |n|
		name = Faker::Name.name
		email = "example-#{n+1}@railstutorial.org" 
		password = "password"
		grade = "2015级"
		college = "信息科学与工程学院"
		User.create!(name: name,
	               	 email: email,
	               	 grade: grade,
	               	 college: college,
	               	 password:              password,
	               	 password_confirmation: password)
	end

	Club.create!(name:  "oss",
				 email: "example@railstutorial.org",
				 classify: "politics",
				 introduction: "it's a club for oss in LZU.")

	10.times do |n|
		name = Faker::Team.name
		email = Faker::Internet.email
		logo = Faker::Company.logo
		classify = "politics"
		introduction = "It's the number #{n+1} club."
		Club.create!(name: name,
					 email: email,
					 logo: logo,
					 classify: classify,
					 introduction: introduction)
	end

	10.times do |n|
		name = Faker::Team.name
		email = Faker::Internet.email
		logo = Faker::Company.logo
		classify = "academy"
		introduction = "It's the number #{n+1} club."
		Club.create!(name: name,
					 email: email,
					 logo: logo,
					 classify: classify,
					 introduction: introduction)
	end

	10.times do |n|
		name = Faker::Team.name
		email = Faker::Internet.email
		logo = Faker::Company.logo
		classify = "art"
		introduction = "It's the number #{n+1} club."
		Club.create!(name: name,
					 email: email,
					 logo: logo,
					 classify: classify,
					 introduction: introduction)
	end

	10.times do |n|
		name = Faker::Team.name
		email = Faker::Internet.email
		logo = Faker::Company.logo
		classify = "sport"
		introduction = "It's the number #{n+1} club."
		Club.create!(name: name,
					 email: email,
					 logo: logo,
					 classify: classify,
					 introduction: introduction)
	end

	10.times do |n|
		name = Faker::Team.name
		email = Faker::Internet.email
		logo = Faker::Company.logo
		classify = "public"
		introduction = "It's the number #{n+1} club."
		Club.create!(name: name,
					 email: email,
					 logo: logo,
					 classify: classify,
					 introduction: introduction)
	end

	10.times do |n|
		name = Faker::Team.name
		email = Faker::Internet.email
		logo = Faker::Company.logo
		classify = "practice"
		introduction = "It's the number #{n+1} club."
		Club.create!(name: name,
					 email: email,
					 logo: logo,
					 classify: classify,
					 introduction: introduction)
	end

	10.times do |n|
		name = Faker::Team.name
		email = Faker::Internet.email
		logo = Faker::Company.logo
		classify = "coopration"
		introduction = "It's the number #{n+1} club."
		Club.create!(name: name,
					 email: email,
					 logo: logo,
					 classify: classify,
					 introduction: introduction)
	end

	10.times do |n|
		name = Faker::Team.name
		email = Faker::Internet.email
		logo = Faker::Company.logo
		classify = "region"
		introduction = "It's the number #{n+1} club."
		Club.create!(name: name,
					 email: email,
					 logo: logo,
					 classify: classify,
					 introduction: introduction)
	end


	Notice.create!(headline: "Your first notice!",
				   content: "This is your first notice!",
				   user_id: "1",
				   status: false)
	10.times do |n|
		Notice.create!(headline: "Your number #{n+1} notice!",
				   content: "This is your number #{n+1} notice!",
				   user_id: "1",
				   status: false)
	end

