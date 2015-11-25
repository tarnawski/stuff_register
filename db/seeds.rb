#Admin
User.create(
	firstname: "Tomasz",
	lastname: "Adamczyk",
	email: "admin@example.com",
	password: "password",
	password_confirmation: "password",
	admin: 'TRUE')

#User
User.create(
	firstname: "Jolanta",
	lastname: "Nowakowska",
	email: "jolka@example.com",
	password: "password",
	password_confirmation: "password",
	admin: 'FALSE')

#more users
5.times do |n|
	u = User.new
	u.firstname = Faker::Name.first_name
	u.lastname = Faker::Name.last_name
	u.email = Faker::Internet.email
	pass = Faker::Internet.password(8)
	u.password = pass
	u.password_confirmation = pass
	u.admin = 'FALSE'
	u.save
end

#rooms
5.times do |n|
	number = Faker::Number.number(3)
	Room.create(name: "A" + number)
end
5.times do |n|
	number = Faker::Number.number(3)
	Room.create(name: "B" + number)
end
5.times do |n|
	number = Faker::Number.number(3)
	Room.create(name: "C" + number)
end
5.times do |n|
	number = Faker::Number.number(3)
	Room.create(name: "D" + number)
end

#types
types = ["Akcesoria", "Komputery stacjonarne", "Drukarki", "Laptopy", "Rzutniki", "Stoliki", "Krzesła"]
types.each do |name|
  Type.create(name: name)
end

#fundings
fundings = ["Unia Europejska", "Państwo", "Dotacja na rozwój", "Prywatny Inwestor"]
fundings.each do |name|
  Funding.create(name: name)
end

descriptions = ["Posiada lekkie rysy." , "Niesprawny", "Posiada duże zarysowania", "Sprawny", "Posiada pękniętą obudowę", "Sprzęt niekompletny", "W Pełni sprawny"]

#stuffs
30.times do |n|
	s = Stuff.new
	s.name = Faker::Commerce.product_name
	s.description = descriptions[rand(0..6)]
	s.price = Faker::Commerce.price
	s.type_id = rand(1..7)
	s.room_id = rand(1..20)
	s.user_id = rand(1..7)
	s.funding_id = rand(1..4)
	s.inventory_id = n-1
	s.save
end

#one stuff at least one inventory
30.times do |n|
	i = Inventory.new
	i.stuff_id = n-1
	i.in_stock = 'TRUE'
	i.comment = Faker::Hacker.say_something_smart
	i.save
end

#and more inventories
rand(20..40).times do |n|
	i = Inventory.new
	i.stuff_id = rand(0..29)
	i.in_stock = 'TRUE'
	i.comment = Faker::Hacker.say_something_smart
	i.save
end

