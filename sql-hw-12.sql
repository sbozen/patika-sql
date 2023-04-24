--1. film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT count(*) FROM film WHERE LENGTH > (SELECT avg(LENGTH) FROM film);

--2.film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT count(*) FROM film WHERE RENTAL_RATE = (SELECT max(RENTAL_RATE) FROM film);

--3.film tablosunda en düşük rental_rate ve en düşüK replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT * FROM film WHERE RENTAL_RATE = (SELECT min(RENTAL_RATE) FROM film) AND REPLACEMENT_COST = (SELECT min(REPLACEMENT_COST) FROM film);

--4.payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer_first_name, customer_last_name, COUNT(*) AS num_purchases
FROM payment
GROUP BY customer_first_name, customer_last_name
ORDER BY most_purchases DESC;