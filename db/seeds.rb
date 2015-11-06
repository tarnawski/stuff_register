#Admin
user = User.new
user.email = 'admin@example.com'
user.encrypted_password = 'xxxxxxx'
user.password = 'password'
user.password_confirmation = 'password'
user.current_sign_in_at = '2015-02-27 20:29:27.899831'
user.last_sign_in_at = '2015-02-26 20:29:27.899831'
user.current_sign_in_ip = '192.168.0.0'
user.last_sign_in_ip = '192.168.0.0'
user.created_at = '2015-02-26 20:29:27.899831'
user.updated_at = '2015-02-26 20:29:27.899831'
user.firstname = 'Tomasz'
user.lastname = 'Adamczyk'
user.admin = 'TRUE'
user.save!

#User
user = User.new
user.email = 'jolka@example.com'
user.encrypted_password = 'xxxxxx'
user.password = 'password'
user.password_confirmation = 'password'
user.current_sign_in_at = '2015-02-27 20:29:27.899831'
user.last_sign_in_at = '2015-02-26 20:29:27.899831'
user.current_sign_in_ip = '192.168.0.0'
user.last_sign_in_ip = '192.168.0.0'
user.created_at = '2015-02-26 20:29:27.899831'
user.updated_at = '2015-02-26 20:29:27.899831'
user.firstname = 'Jolanta'
user.lastname = 'Nowakowska'
user.admin = 'FALSE'
user.save!

rooms = ["B102", "A2", "C65", "A145", "D103", "B182"]
rooms.each do |name|
  Room.create(name: name)
end

types = ["Akcesoria", "Komputery stacjonarne", "Drukarki", "Laptopy", "Rzutniki", "Stoliki", "Krzesła"]
types.each do |name|
  Type.create(name: name)
end

fundings = ["Unia Europejska", "Poństwo", "Dotacje na rozwój"]
fundings.each do |name|
  Funding.create(name: name)
end

inventories = [
  [ 1, TRUE, "Urządzenie posiada rysy"],
  [ 2, TRUE, "Urządzenie jest niesprawne"]
]
inventories.each do |stuff_id, in_stock, comment|
  Inventory.create(stuff_id: stuff_id, in_stock: in_stock, comment: comment)
end

stuffs = [
  [ "Komputer stacjonarny", "Komputer stacjonarny numer seryjny:JH7GFH", 3000.25, 2, 1, 2, 1, 1],
  [ "Laptop", "Lenovo numer seryjny:JH7GFH", 2500, 3, 1, 2, 1, 1]
]
# TO_DO Dopisać więcej fixtur, aby to zrobić należy dodać do talicy staffs więcej elementów.

stuffs.each do |name, description, price, type_id, room_id, user_id, funding_id, inventory_id|
  Stuff.create( name: name, description: description, price: price, type_id: type_id, room_id: room_id, user_id: user_id, funding_id: funding_id, inventory_id: inventory_id)
end

