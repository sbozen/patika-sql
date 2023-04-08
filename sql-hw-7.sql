--1. Film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating FROM film GROUP BY rating;

--2. Film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 
--50den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.

SELECT COUNT(replacement_cost) FROM film  GROUP BY replacement_cost  HAVING COUNT(replacement_cost)>50;

--3. Customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?

SELECT store_id, COUNT(*) FROM customer GROUP BY store_id;

--4. City tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra 
--en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.

SELECT country_id, COUNT(country_id) FROM city GROUP BY country_id ORDER BY COUNT(country_id) DESC LIMIT 1; 