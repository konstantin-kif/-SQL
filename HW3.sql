DROP DATABASE IF EXISTS hw3;
CREATE DATABASE IF NOT EXISTS hw3;

USE hw3;

DROP TABLE IF EXISTS staff;
CREATE TABLE IF NOT EXISTS `staff`
(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`firstname` VARCHAR(45),
`lastname` VARCHAR(45),
`post` VARCHAR(45),
`seniority` INT,
`salary` INT,
`age` INT
);

INSERT INTO `staff` (`firstname`, `lastname`, `post`,`seniority`,`salary`, `age`)
VALUES
('Вася', 'Васькин', 'Начальник', 40, 100000, 60), 
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

DROP TABLE IF EXISTS activity_staff;
CREATE TABLE IF NOT EXISTS `activity_staff`
(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`staff_id` INT,
FOREIGN KEY(staff_id) REFERENCES staff(id),
`date_activity` DATE,
`count_pages` INT
);

INSERT `activity_staff` (`staff_id`, `date_activity`, `count_pages`)
VALUES
(1,'2022-01-01',250),
(2,'2022-01-01',220),
(3,'2022-01-01',170),
(1,'2022-01-02',100),
(2,'2022-01-01',220),
(3,'2022-01-01',300),
(7,'2022-01-01',350),
(1,'2022-01-03',168),
(2,'2022-01-03',62),
(3,'2022-01-03',84);

SELECT * 
FROM staff;

SELECT * 
FROM activity_staff;

-- Выведите id сотрудников, которые напечатали более 500 страниц за всех дни
SELECT id, count_pages
FROM activity_staff
GROUP BY id
HAVING (count_pages) > 500;

-- Выведите  дни, когда работало более 3 сотрудников Также укажите кол-во сотрудников, которые работали в выбранные дни  
SELECT date_activity, COUNT(*) AS "кол-во сотрудников"
FROM activity_staff
WHERE staff_id > 3
GROUP BY date_activity;
  
  
  
  -- Выведите среднюю заработную плату по должностям, которая составляет более 30000 
SELECT post, AVG(salary)
FROM staff
GROUP BY post
HAVING AVG(salary) > 30000;

-- Отсортеруйте поле “зарплата” (salary) в порядке убывания
SELECT * FROM staff 
ORDER BY salary DESC;

-- Выведите 5 максимальных зарплат (salary)
SELECT salary
FROM staff LIMIT 5;

-- Подсчитать суммарную зарплату(salary) по каждой специальности (post)
SELECT post, SUM(salary) AS "Sum of total salary"
FROM staff
GROUP BY post;

-- Найти количество сотрудников по специальности “Рабочий” (post) в возрасте от 24 до 49 лет.
SELECT post, COUNT(*)  AS "Number of employees"
FROM staff 
WHERE post = 'Рабочий' && age >= 24 && age <= 49
GROUP BY post;

-- Найти количество специальностей
SELECT  COUNT(DISTINCT post) AS "number of specialties"
FROM staff;

-- Вывести специальности, у которых средний возраст сотрудника меньше 30 лет
SELECT post, AVG(age) AS "employee's age"
FROM staff
GROUP BY post
HAVING AVG(age) < 30;



