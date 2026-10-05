CREATE DATABASE BABY_CARE_STORE;

USE BABY_CARE_STORE;

CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    AgeGroup VARCHAR(30),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Product VALUES
(101, 'Baby Diapers', 'Diapers', 'Pampers', '0-2 Years', 650, 25),
(102, 'Baby Food', 'Feeding', 'Cerelac', '6-12 Months', 450, 20),
(103, 'Baby Dress', 'Clothing', 'H&M', '1-2 Years', 800, 15),
(104, 'Baby Toy', 'Toys', 'Fisher Price', '1-3 Years', 550, 30),
(105, 'Baby Shampoo', 'Skincare', 'Johnson', '0-3 Years', 300, 18),
(106, 'Baby Lotion', 'Skincare', 'Himalaya', '0-3 Years', 250, 22),
(107, 'Baby Bottle', 'Feeding', 'Philips', '0-2 Years', 400, 12),
(108, 'Baby Blanket', 'Accessories', 'Mee Mee', '0-2 Years', 900, 8);


SELECT * FROM Product;


SELECT DISTINCT Category FROM Product;


SELECT * FROM Product
WHERE Price > 500;


SELECT * FROM Product
ORDER BY Price DESC;