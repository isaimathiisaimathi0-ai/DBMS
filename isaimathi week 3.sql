USE BABY_CARE_STORE;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "BABY CARE HUB", "9876100001", "babycarehub@gmail.com", "Chennai"),
(202, "LITTLE ANGELS", "9876100002", "littleangels@gmail.com", "Madurai"),
(203, "BABY WORLD", "9876100003", "babyworld@gmail.com", "Coimbatore"),
(204, "KIDS CARE MART", "9876100004", "kidscaremart@gmail.com", "Salem"),
(205, "TINY TOTS", "9876100005", "tinytots@gmail.com", "Trichy"),
(206, "BABY CLOSET", "9876100006", "babycloset@gmail.com", "Chennai"),
(207, "LITTLE STAR", "9876100007", "littlestar@gmail.com", "Madurai"),
(208, "KIDS WORLD", "9876100008", "kidsworld@gmail.com", "Coimbatore"),
(209, "BABY STORE", "9876100009", "babystore@gmail.com", "Salem"),
(210, "MOTHER CARE", "9876100010", "mothercare@gmail.com", "Trichy"),
(211, "BABY ESSENTIALS", "9876100011", "babyessentials@gmail.com", "Chennai"),
(212, "TINY WORLD", "9876100012", "tinyworld@gmail.com", "Madurai"),
(213, "KIDS ZONE", "9876100013", "kidszone@gmail.com", "Coimbatore"),
(214, "BABY MART", "9876100014", "babymart@gmail.com", "Salem"),
(215, "LITTLE CARE", "9876100015", "littlecare@gmail.com", "Trichy");

SELECT * FROM Seller;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 40),
(302, 102, 201, "AVAILABLE", 30),
(303, 103, 202, "AVAILABLE", 35),
(304, 104, 202, "AVAILABLE", 25),
(305, 105, 203, "AVAILABLE", 15),

(306, 106, 204, "AVAILABLE", 40),
(307, 107, 204, "AVAILABLE", 35),
(308, 108, 205, "AVAILABLE", 30),
(309, 109, 205, "AVAILABLE", 25),
(310, 110, 206, "AVAILABLE", 45),

(311, 111, 207, "AVAILABLE", 35),
(312, 112, 207, "AVAILABLE", 30),
(313, 113, 208, "AVAILABLE", 40),
(314, 114, 208, "AVAILABLE", 25),
(315, 115, 209, "AVAILABLE", 20),

(316, 116, 210, "AVAILABLE", 25),
(317, 117, 210, "AVAILABLE", 40),
(318, 118, 211, "AVAILABLE", 30),
(319, 119, 211, "AVAILABLE", 35),
(320, 120, 212, "AVAILABLE", 20),

(321, 121, 213, "AVAILABLE", 35),
(322, 122, 213, "AVAILABLE", 40),
(323, 123, 214, "AVAILABLE", 45),
(324, 124, 214, "AVAILABLE", 40),
(325, 125, 215, "AVAILABLE", 30),

(326, 126, 201, "AVAILABLE", 20),
(327, 127, 202, "AVAILABLE", 15),
(328, 128, 203, "AVAILABLE", 25),
(329, 129, 204, "AVAILABLE", 30),
(330, 130, 205, "AVAILABLE", 25),

(331, 131, 206, "AVAILABLE", 40),
(332, 132, 207, "AVAILABLE", 25),
(333, 133, 208, "AVAILABLE", 30),
(334, 134, 209, "AVAILABLE", 35),
(335, 135, 210, "AVAILABLE", 40);

SELECT * FROM Inventory;

UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;


UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;


UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


UPDATE Seller
SET ContactNo = "9876543210"
WHERE SellerID = 215;

SELECT * FROM Seller
WHERE SellerID = 215;


DELETE FROM Inventory
WHERE InventoryID = 325;


SELECT * FROM Inventory;


SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";


SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;
SELECT * FROM Seller;