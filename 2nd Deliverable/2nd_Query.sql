-- For seller with id = 36 , find the number of
-- orders he took part in since 1/11/2024

SELECT COUNT(*) AS order_number
FROM 5shops_db.order
WHERE 5shops_db.order.seller_id = 36 AND 5shops_db.order.date > 1/11/2024; 