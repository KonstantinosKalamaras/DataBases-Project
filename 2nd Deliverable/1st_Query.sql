-- Find the customers that have never placed an order

SELECT 5shops_db.Customer.name
FROM 5shops_db.Customer
WHERE name NOT IN (
    SELECT 5shops_db.Customer.name
    FROM 5shops_db.Customer
    JOIN 5shops_db.Order
    ON 5shops_db.Customer.customer_id = 5shops_db.Order.customer_id
);
