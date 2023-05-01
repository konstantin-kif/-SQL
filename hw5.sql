DROP DATABASE IF EXISTS hw5;
CREATE DATABASE IF NOT EXISTS hw5;

USE hw5;

DROP TABLE IF EXISTS cars ;
CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    car_brand VARCHAR(45),
    cost INT
);

INSERT cars (id, car_brand, cost)
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT * 
FROM cars;

-- Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов
CREATE VIEW Price_in_dollars AS
SELECT id, car_brand, cost 
FROM cars
WHERE cost < 25000;

SELECT * FROM Price_in_dollars;

-- Измените в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)
ALTER VIEW Price_in_dollars AS
SELECT id, car_brand, cost 
FROM cars
WHERE cost < 30000;

SELECT * FROM Price_in_dollars;

-- Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE VIEW skoda_and_audi AS 
SELECT * 
FROM cars
WHERE car_brand IN ('Skoda', 'Audi');

SELECT * FROM skoda_and_audi;