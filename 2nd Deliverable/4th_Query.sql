-- For seller with id = 36 , find a list with
-- the employees responsible for his orders,
-- along with their emails

SELECT ens.employee_id, emp.email
FROM
	(SELECT * FROM 5shops_db.employee_notifies_seller
    WHERE 5shops_db.employee_notifies_seller.seller_id = 36) AS ens
	JOIN (SELECT 5shops_db.employee.email, 5shops_db.employee.employee_id FROM 5shops_db.employee) AS emp
	ON ens.employee_id = emp.employee_id
