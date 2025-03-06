DROP USER IF EXISTS 'employee'@'localhost';
CREATE USER 'employee'@'localhost' IDENTIFIED BY 'employee_password';
GRANT SELECT ON 5shops_db.order TO 'employee'@'localhost';
GRANT SELECT ON 5shops_db.product TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE ON 5shops_db.seller TO 'employee'@'localhost';
GRANT SELECT, INSERT, UPDATE ON 5shops_db.customer TO 'employee'@'localhost';

DROP USER IF EXISTS 'seller'@'%';
CREATE USER 'seller'@'%' IDENTIFIED BY 'seller_password';
GRANT SELECT (name) ON 5shops_db.customer TO 'seller'@'%';
GRANT SELECT (email) ON 5shops_db.customer TO 'seller'@'%';
GRANT SELECT ON 5shops_db.order TO 'seller'@'%';

DROP USER IF EXISTS 'customer'@'%';
CREATE USER 'customer'@'%' IDENTIFIED BY 'customer_password';
GRANT SELECT ON 5shops_db.product TO 'customer'@'%';
GRANT SELECT ON 5shops_db.statistics TO 'customer'@'%';
GRANT SELECT ON 5shops_db.malfunction TO 'customer'@'%';
GRANT SELECT, INSERT ON 5shops_db.order TO 'customer'@'%';


DROP USER IF EXISTS 'admin'@'%';
CREATE USER 'admin'@'%' IDENTIFIED BY 'admin_password';
GRANT ALL ON 5shops_db.* TO 'admin'@'%';
