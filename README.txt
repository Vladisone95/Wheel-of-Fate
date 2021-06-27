Vlad Tureanu
Wheel of Fate

Pentru rularea proiectului:

Trebuie instalat docker si rulat containerul descris in fisierul 
docker-compose.yml pentru pornirea serverului mysql. Deschis 
terminal in root si rulat:

comenzi:
	docker-compose build
	docker-compose up --d

Trebuie pornit backend-ul in nodejs. Deschis terminal in folderul de
backend si rulat:

comenzi:
	npm run start

Trebuie pornit frontend-ul in react.Deschis terminal in folderul de
frontend si rulat:

comenzi:
	npm run dev

API-ul se va deschide in localhost:3333, iar front-ul in localhost:3000.
Serverul de mysql va rula pe localhost:4307. Am inclus is un export al db-ului,
dar se poate icnepe si cu o baza de date goala, iar apoi adaugati angajati si
generate saptamani de munca.