--Answer 1
SELECT customer_last_name
FROM om.customers
ORDER BY customer_last_name ASC;

--Answer 2
SELECT customer_last_name
FROM om.customers
ORDER BY customer_last_name DESC;

--Answer 3
SELECT customer_last_name,customer_first_name
FROM om.customers
ORDER BY  customer_last_name ASC, customer_first_name DESC;

--Answer 4
SELECT customer_last_name, customer_first_name, customer_id
FROM om.customers
ORDER BY customer_last_name DESC, customer_id ;

--Answer 5
SELECT  customer_first_name AS "FIRSTNAME" ,customer_last_name AS "Last Name",  customer_city AS "'City'", customer_state AS "*Cust-State*"
FROM om.customers;

--Answer 6
SELECT DISTINCT customer_state
FROM om.customers
ORDER BY customer_state;

--Answer 7
SELECT DISTINCT customer_fax
FROM om.customers
ORDER BY customer_fax DESC;

--Answer 8
SELECT *
FROM om.customers
ORDER BY customer_id FETCH FIRST 10 ROWS ONLY;

--Answer 9
SELECT title
FROM om.items
WHERE title LIKE '%Road%';

--Answer 10
SELECT title, unit_price
FROM om.items
WHERE unit_price LIKE '%.%';

--Answer 11
SELECT title, unit_price
FROM om.items
WHERE NOT unit_price LIKE '%.%';

--Answer 12
SELECT order_id, order_qty
FROM om.order_details
WHERE order_qty > = 2 
ORDER BY order_id;

--Answer 13
SELECT order_id
FROM om.order_details
WHERE REMAINDER(order_id, 13) = 0;


--Answer 14
SELECT order_id, shipped_date
FROM om.orders
WHERE shipped_date IS NULL;

--Answer 15
SELECT order_id, (shipped_date- order_date) AS "Number of days to ship"
FROM om.orders
WHERE (shipped_date- order_date)> 25
ORDER BY (shipped_date- order_date) DESC;



 




