USE BABY_CARE_STORE;

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    Qty INT,
    TotalAmt DECIMAL(10,2),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

INSERT INTO Orders VALUES
(401, 'ANU', 101, 2, 900, 'PENDING'),
(402, 'PRIYA', 102, 3, 1050, 'PENDING'),
(403, 'KAVYA', 107, 2, 1598, 'DELIVERED'),
(404, 'RAJ', 116, 1, 599, 'PENDING'),
(405, 'DIVYA', 112, 2, 1398, 'DELIVERED'),
(406, 'ARUN', 121, 3, 1050, 'PENDING'),
(407, 'NITHYA', 132, 1, 799, 'DELIVERED'),
(408, 'SURESH', 135, 4, 796, 'PENDING'),
(409, 'MEENA', 103, 2, 500, 'DELIVERED'),
(410, 'KARTHIK', 110, 1, 599, 'PENDING'),
(411, 'POOJA', 113, 2, 998, 'DELIVERED'),
(412, 'RAVI', 122, 3, 897, 'PENDING'),
(413, 'HARINI', 123, 2, 398, 'DELIVERED'),
(414, 'VISHNU', 126, 1, 450, 'PENDING'),
(415, 'SANDHYA', 127, 1, 599, 'DELIVERED'),
(416, 'GOKUL', 128, 2, 598, 'PENDING'),
(417, 'JANANI', 129, 1, 199, 'DELIVERED'),
(418, 'ROHITH', 130, 2, 700, 'PENDING'),
(419, 'DHARSHINI', 131, 3, 597, 'DELIVERED'),
(420, 'NAVEEN', 134, 4, 596, 'PENDING');


CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Qty INT,
    UnitPrice DECIMAL(10,2),

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

INSERT INTO Order_Details VALUES
(501, 401, 101, 2, 450),
(502, 402, 102, 3, 350),
(503, 403, 107, 2, 799),
(504, 404, 116, 1, 599),
(505, 405, 112, 2, 699),
(506, 406, 121, 3, 350),
(507, 407, 132, 1, 799),
(508, 408, 135, 4, 199),
(509, 409, 103, 2, 250),
(510, 410, 110, 1, 599),
(511, 411, 113, 2, 499),
(512, 412, 122, 3, 299),
(513, 413, 123, 2, 199),
(514, 414, 126, 1, 450),
(515, 415, 127, 1, 599),
(516, 416, 128, 2, 299),
(517, 417, 129, 1, 199),
(518, 418, 130, 2, 350),
(519, 419, 131, 3, 199),
(520, 420, 134, 4, 149);


SELECT * FROM Orders;

SELECT * FROM Order_Details;


UPDATE Orders
SET OrderStatus = "SHIPPED"
WHERE OrderID = 401;


UPDATE Orders
SET OrderStatus = "DELIVERED"
WHERE OrderID = 402;


SELECT * FROM Orders
ORDER BY CustomerName;


SELECT * FROM Orders
WHERE CustomerName = "PRIYA"
ORDER BY OrderID;


SELECT * FROM Orders
WHERE OrderStatus = "PENDING";


SELECT * FROM Orders
WHERE OrderStatus = "SHIPPED";


SELECT * FROM Orders
WHERE OrderStatus = "DELIVERED";


SELECT CustomerName, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerName;


SELECT CustomerName, SUM(TotalAmt) AS TotalAmountSpent
FROM Orders
GROUP BY CustomerName;


SELECT * FROM Orders;

SELECT * FROM Order_Details;


DROP TABLE IF EXISTS Order_Details;

DROP TABLE IF EXISTS Orders;