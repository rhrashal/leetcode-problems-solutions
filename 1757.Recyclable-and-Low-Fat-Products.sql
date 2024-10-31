--1757. Recyclable and Low Fat Products
CREATE TABLE #Products (
    product_id INT,
    low_fats CHAR(1),
    recyclable CHAR(1)
);

INSERT INTO #Products (product_id, low_fats, recyclable) VALUES
(0, 'Y', 'N'),
(1, 'Y', 'Y'),
(2, 'N', 'Y'),
(3, 'Y', 'Y'),
(4, 'N', 'N');

SELECT product_id FROM #Products where recyclable = 'Y' and low_fats = 'Y'

DROP TABLE IF EXISTS #Products;
