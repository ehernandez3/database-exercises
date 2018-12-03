USE sakila;

SELECT * FROM actor;


# SELECT name, price * 10 FROM products;
#
#
#
#
# select sum(quantity) FROM products;
#
# select count(*) FROM products; -- Shows


SELECT * FROM payment;

SELECT ceiling(avg(amount)) FROM payment; -- 5

SELECT avg(amount) FROM payment; -- 4.200667

SELECT floor(avg(amount)) FROM payment; -- 4
