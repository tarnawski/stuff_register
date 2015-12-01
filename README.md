Wersja live aplikacji dostępna pod adresem:
https://projektz3.herokuapp.com/

Dokumentacja aplikacji dostpna pod adresem: 
https://docs.google.com/document/d/1KLZUgRcGwxjL4hM1hyaOilssK9nwF31U2-kpVMpEW7w

1. Jeśli nie masz kopii aplikacji, a posiadasz uprawnienia do repzytorium sklonuj ją prostym poleceniem:

	git clone https://github.com/tarnawski/stuff_register.git

2. Przejdź do katalogu projektu 'cd stuff_register'
3. Pobierz wymagane pakiety poleceniem 'bundle install'
4. Konfiguracja bazy danych znajduje się w pliku 'config/database.yml' jeśli jest to konieczne edytuj ją.
5. Utwórz bazę danych poleceniem 'rake db:setup' oraz przygotuj bazę testową 'rake db:test:prepare'
6. Uruchom serwer rails poleceniem 'rails s'
7. Otwórz swój localhost wpisując w przeglądarce w pole adresu: 'localhost:3000'
8. Gotowe! Teraz możesz zalogować się na konto:

Administratora:

	Login: admin@example.com
	Hasło: password

Usera:	

	Login: jolka@example.com
	Hasło: password

9. Do uruchomienia testów wykorzystaj komendę 'rspec spec/' 
