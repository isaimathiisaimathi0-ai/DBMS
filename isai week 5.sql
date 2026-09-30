USE BABY_CARE_STORE;

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID)
);

INSERT INTO Payment VALUES
(601, 401, 'UPI', '2026-09-01', 900.00, 'Successful'),
(602, 402, 'Card', '2026-09-02', 1050.00, 'Successful'),
(603, 403, 'Cash', '2026-09-03', 1598.00, 'Failed'),
(604, 404, 'UPI', '2026-09-04', 599.00, 'Successful'),
(605, 405, 'Card', '2026-09-05', 1398.00, 'Successful'),
(606, 406, 'Cash', '2026-09-06', 1050.00, 'Failed'),
(607, 407, 'UPI', '2026-09-07', 799.00, 'Successful'),
(608, 408, 'Card', '2026-09-08', 796.00, 'Successful'),
(609, 409, 'Cash', '2026-09-09', 500.00, 'Successful'),
(610, 410, 'UPI', '2026-09-10', 599.00, 'Failed');

SELECT * FROM Payment;

UPDATE Payment
SET PaymentStatus = 'Successful'
WHERE PaymentID = 603;

SELECT * FROM Payment
WHERE PaymentStatus = 'Successful';

SELECT * FROM Payment
WHERE PaymentStatus = 'Failed';

SELECT * FROM Payment
WHERE PaymentMode = 'UPI';

SELECT * FROM Payment
WHERE PaymentMode = 'Card';

SELECT * FROM Payment
WHERE PaymentMode = 'Cash';

SELECT PaymentMode, COUNT(*) AS No_Of_Transactions
FROM Payment
GROUP BY PaymentMode;

SELECT PaymentMode, SUM(PaymentAmount) AS Total_Amount_Received
FROM Payment
WHERE PaymentStatus = 'Successful'
GROUP BY PaymentMode;