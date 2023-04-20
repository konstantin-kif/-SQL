DROP SCHEMA IF EXISTS HW2;
CREATE SCHEMA IF NOT EXISTS HW2;
USE HW2;

DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE NOT NULL,
count_product INT
);

INSERT INTO sales(order_date, count_product)
VALUES
("2022-01-01", "156"),
("2022-01-02", "180"),
("2022-01-03", "21"),
("2022-01-04", "124"),
("2022-01-05", "341");

SELECT * FROM sales;

SELECT 
id AS "id Заказа",
IF ( count_product < 100, "Маленький заказ",
IF ( count_product >= 100 AND  count_product <= 300, "Средний заказ",
IF ( count_product > 300, "Большой заказ", "Неопределенно")))
AS "Тип заказа"
FROM sales;

DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders
(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(10),
amount FLOAT,
order_status VARCHAR(45)
);


INSERT INTO orders(employee_id, amount, order_status)
VALUES
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED"
);

SELECT * FROM orders;

SELECT
CASE order_status 
		WHEN 'OPEN' THEN 'Order is in open state'
		WHEN 'CLOSED' THEN 'Order is closed'
		WHEN 'CANCELLED' THEN 'Order is cancelled'
	END AS 'full_order_status'	
FROM orders;

-- NULL это отсутсвие значений в ячейке, а 0 это цифра, т.е. значение (с которым можно производить математические вычисления).