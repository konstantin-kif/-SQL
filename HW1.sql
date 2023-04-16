/*CREATE DATABASE mobile_phone;
USE mobile_phone;
CREATE TABLE employ
(
Idemploy INT PRIMARY KEY NOT NULL,
ProductName VARCHAR(45) NOT NULL,
Manufacturer VARCHAR(45) NOT NULL,
ProductCount VARCHAR(45) NOT NULL,
Price VARCHAR(20)
);

INSERT employ
(
Idemploy, ProductName, Manufacturer, ProductCount, Price
)
VALUES
(1, "IPhone X", "Apple", "3", "76_000"),
(2, "IPhone 8", "Apple", "2", "51_000"), 
(3, "Galaxy S9", "Samsung", "2", "56_000"),
(4, "Galaxy S9", "Samsung", "1", "41_000"),
(5, "P20 Pro", "Huawei", "5", "36_000");

SELECT * FROM employ
WHERE ProductCount > "2";

SELECT * FROM employ
WHERE Manufacturer = "Samsung"

SELECT * FROM employ
WHERE ProductName LIKE "%IPhone%"

SELECT * FROM employ
WHERE Manufacturer = "Samsung"


SELECT * FROM employ
WHERE ProductName LIKE  "%8%";

DESC employ;
*/
