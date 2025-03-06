-- Find all Apple products 

SELECT 5shops_db.producers_products.producer_name, 5shops_db.producers_products.product_name
FROM 5shops_db.producers_products
WHERE 5shops_db.producers_products.producer_name = "Apple"