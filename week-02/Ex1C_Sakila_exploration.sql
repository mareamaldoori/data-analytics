/*
a) The actor table includes an actor ID, first name, last name and date and time info and when it was updated last.
b) Film includes information about movies and their title, description, date of release, the languge of the movie or film, cost of renting it, length, and moview rating.
c) Film_actor
d) Rental table shows when a movie was rented and returned, along with the customer, inventory, and staff IDs. It is a little bit difficult to understandbecause it uses IDs instead of showing the actual movie titles and customer name.
e) The inventory table shows and keep track of inventory ID, film ID, store ID, and when the information was updated last.
f) I may use rental, inventory, and film tables. The rental table shows the rental date and inventory ID. The inventory table connects the inventory ID to a film ID, and the film table can give uws the movie title. By connecting these tables, we can find which movies were rented and on which date.
*/

USE sakila;
SELECT  rental_date, inventory_id
FROM rental;

SELECT inventory_id, film_id
FROM inventory;

SELECT film_id, title
FROM filn;