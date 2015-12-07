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
rooms = ["B102", "A2", "C65", "A145", "D103", "B182", "A56", "B301", "B302", "B303", "B304", "B305", "B306", "B307", "F5", "F6", "F7", "F8"]
rooms.each do |name|
Room.create(name: name)
end
types = ["Akcesoria", "Komputery stacjonarne", "Drukarki", "Laptopy", "Rzutniki", "Stoliki", "Krzesła", "Meble", "Narzędzia", "Noniki Pamięci", "Oprogramowanie", "Materiały Naukowe", "Artykuły biurowe" ,"Inne"]
types.each do |name|
Type.create(name: name)
end
fundings = ["Unia Europejska", "Państwo", "Dotacje na rozwój","Fundusz Zakładu", "Fundusz Wydziału", "Fundusz Uczelni", "Miasto Rzeszów", "Prywatni inwestorzy", "Projekty", "Inne"]
fundings.each do |name|
Funding.create(name: name)
end
inventories = [
[ 1, TRUE, "Urządzenie posiada rysy"],
[ 2, TRUE, "Urządzenie jest niesprawne"],
[ 3, TRUE, "W pełni sprawne"]
]
inventories.each do |stuff_id, in_stock, comment|
Inventory.create(stuff_id: stuff_id, in_stock: in_stock, comment: comment)
end
stuffs = [
[ "Komputer stacjonarny", "Komputer stacjonarny numer seryjny:JH7GFH", 3000.25, 2, 1, 2, 1, 1],
[ "Laptop", "Lenovo numer seryjny:JH7GFH", 2500, 3, 1, 2, 1, 1],
[ "Szafa","Szafa na materiały nr2",200,8,1,1,4,1],
[ "Rzutnik B102","Rzutnik w sali B102",1000,5,1,1,4,3],
[ "Krzesło","Krzesło nr1 sala a145",50,7,4,1,1,1],
[ "StółA2","Stół konferencyjny sala A2", 300, 6,2,1,4,1],
[ "Oscyloskop","Oscyloskop pomiarowy nr1 B182", 4000, 1, 6,1,5,3],
[ "Papier Biurowy", "Arkusz papieru do drukarki 5000szt", 50, 13, 1, 4, 3],
[ "Kinect 1","Kinect zespolu wizji komputerowej", 2000, 1, 5, 1, 2, 3],
[ "Kinect 2","Kinect zespolu wizji komputerowej v2", 2500, 1, 5, 1, 2, 3],
[ "LeapMotion", "LeapMotion zespolu wizji komputerowej", 5000, 1, 5, 1, 2, 3],
[ "KameraStereowizyjna", "Kamera Stereowizyjna zespolu wizji komputerowej", 3000, 1, 5, 1, 2, 3],
[ "szafa na dokumenty", "używana do przechowywania wszelkich dokumentów wykłądowców", 200, 8, 2, 1,5,3],
[ "Silnik napięcia stałego","Silnik służący do nauczania", 5000, 1,6,1,2,3],
[ "Silnik Skokowy", "Silnik służący do nauczania", 4000, 1,6,1,2,3],
[ "głosniki", "głosniki do komputera stacjonarnego", 200, 2,1,2,1,3],
[ "Automat do wodyB102", "Automat z wodą pitną", 400,1,1,1,4,3],
[ "wieszaA2", "wieszak na kurtki w sali A2",50,1,2,1,5,1],
[ "Multimetr Cyfrowy", "Multimetr pomiarowy, do celów edukacyjnych", 400, 9,6,1,5,3],
[ "Amperomierz", "Amperomierz Analogowy, do celów edukacyjnych", 50, 9, 6,1,5,3],
[ "Woltomierz", "Woltomierz Analogowy, do celów edukacyjnych", 50, 9 ,6,1,5,3],
[ "Młotek", "DO naprawy wszelkich przedmiotów", 30, 9, 1, 2,3,2],
[ "Dron", "Dron służący do celów edukacyjnych", 2000, 1,3,1,2,3],
[ "Zestaw Lego", "Zestaw klocków ktore można programować, do celów edukacyjnych", 1500, 1,3,1,2,3]
]
# TO_DO Dopisać więcej fixtur, aby to zrobić należy dodać do talicy staffs więcej elementów.
stuffs.each do |name, description, price, type_id, room_id, user_id, funding_id, inventory_id|
Stuff.create( name: name, description: description, price: price, type_id: type_id, room_id: room_id, user_id: user_id, funding_id: funding_id, inventory_id: inventory_id)
end
