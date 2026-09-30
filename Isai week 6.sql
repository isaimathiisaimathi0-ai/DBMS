USE BABY_CARE_STORE;

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(255),
    ReviewDate DATE,
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID)
    REFERENCES Review(ReviewID)
);

INSERT INTO Review VALUES
(701, 'ANU', 101, 'Good quality', '2026-09-10'),
(702, 'PRIYA', 102, 'Very useful product', '2026-09-11'),
(703, 'KAVYA', 107, 'Bad quality', '2026-09-12'),
(704, 'RAJ', 116, 'Good product', '2026-09-13'),
(705, 'DIVYA', 112, 'Nice design', '2026-09-14'),
(706, 'ARUN', 121, 'Good quality', '2026-09-15'),
(707, 'NITHYA', 132, 'Very comfortable', '2026-09-16'),
(708, 'SURESH', 135, 'Average quality', '2026-09-17'),
(709, 'MEENA', 103, 'Excellent product', '2026-09-18'),
(710, 'KARTHIK', 110, 'Not satisfied', '2026-09-19');

INSERT INTO Rating VALUES
(801, 701, 5),
(802, 702, 4),
(803, 703, 2),
(804, 704, 4),
(805, 705, 5),
(806, 706, 4),
(807, 707, 5),
(808, 708, 3),
(809, 709, 5),
(810, 710, 2);

SELECT * FROM Review;

SELECT * FROM Rating;

SELECT * FROM Review
WHERE CustomerName = 'PRIYA';

SELECT * FROM Review
WHERE ProductID = 101;

SELECT * FROM Rating
WHERE Rating > 3;

SELECT * FROM Rating
WHERE Rating <= 3;

SELECT * FROM Review
ORDER BY CustomerName;

SELECT * FROM Rating
ORDER BY Rating DESC;

SELECT COUNT(*) AS TotalReviews
FROM Review;

SELECT AVG(Rating) AS AverageRating
FROM Rating;

SELECT Review.ReviewID,
       Review.CustomerName,
       Review.ProductID,
       Review.ReviewText,
       Rating.Rating
FROM Review
JOIN Rating
ON Review.ReviewID = Rating.ReviewID;