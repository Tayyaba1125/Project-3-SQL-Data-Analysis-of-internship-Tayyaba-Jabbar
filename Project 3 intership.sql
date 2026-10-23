/* ============================================================
   DecodeLabs - Data Analytics | Project 3: SQL Data Analysis
   Table   : Cleaned_Dataset (1200 rows, 14 columns)
   Tool : Microsoft SQL Server 
   ============================================================ */


/* ---------- SECTION 1: SELECT ---------- */
-- Q1. Fetch all records (all 1200 rows, all columns)
SELECT * FROM Cleaned_Dataset;

-- Q2. Fetch the first 5 records (latest 5 orders by date)
SELECT TOP 5 *
FROM Cleaned_Dataset
ORDER BY [Date] DESC;

/* ---------- SECTION 2: WHERE (row-level filtering) ---------- */

-- Q3. Orders of product = Monitor                      (Result: 163 rows)
SELECT *
FROM Cleaned_Dataset
WHERE Product = 'Monitor';

-- Q4. Orders with status = Returned                    (Result: 247 rows)
SELECT *
FROM Cleaned_Dataset
WHERE OrderStatus = 'Returned';

-- Q5. Multiple conditions (AND): Delivered Laptop orders above 1000
SELECT OrderID, Product, Quantity, TotalPrice, OrderStatus
FROM Cleaned_Dataset
WHERE Product = 'Laptop'
  AND OrderStatus = 'Delivered'
  AND TotalPrice > 1000;

-- Q6. Pattern matching (LIKE): all orders that used a SAVE coupon (SAVE10)
SELECT OrderID, CouponCode, TotalPrice
FROM Cleaned_Dataset
WHERE CouponCode LIKE 'SAVE%';


/* ---------- SECTION 3: ORDER BY ---------- */

-- Q7. All records sorted by Product Z-A, then highest price first within each product
SELECT *
FROM Cleaned_Dataset
ORDER BY Product DESC, TotalPrice DESC;


/* ---------- SECTION 4: Basic Aggregations (COUNT, SUM, AVG, MAX, MIN) ---------- */

-- Q8. Maximum quantity in a single order               (Result: 5)
SELECT MAX(Quantity) AS [Maximum Quantity]
FROM Cleaned_Dataset;

-- Q9. Minimum number of items in a cart                (Result: 1)
SELECT MIN(ItemsInCart) AS [Minimum Items In Cart]
FROM Cleaned_Dataset;

-- Q10. Count of orders with TotalPrice below 2853      (Result: 1161)

SELECT COUNT(OrderID) AS [Total Orders With Price Less Than 2853]
FROM Cleaned_Dataset
WHERE TotalPrice < 2853;

-- Q11. Total revenue (sum of TotalPrice)               (Result: 1264761.96)
SELECT SUM(TotalPrice) AS [Total Price Sum]
FROM Cleaned_Dataset;

-- Q12. Average order value                             (Result: 1053.97)
SELECT AVG(TotalPrice) AS [Total Price Avg]
FROM Cleaned_Dataset;

-- Q13. Total number of orders 
SELECT COUNT(*) AS [Total Orders]
FROM Cleaned_Dataset;


/* ---------- SECTION 5: GROUP BY ---------- */

-- Q14. Total quantity sold per product, highest first
--      (Chair 562, Printer 542, Laptop 535, Desk 508, Tablet 497, Monitor 480, Phone 411)
SELECT Product, SUM(Quantity) AS [Total Quantity]
FROM Cleaned_Dataset
GROUP BY Product
ORDER BY [Total Quantity] DESC;

-- Q15. Number of orders per order status
SELECT OrderStatus, COUNT(*) AS [Total Orders]
FROM Cleaned_Dataset
GROUP BY OrderStatus
ORDER BY [Total Orders] DESC;

-- Q16. Average order value and total revenue per product
SELECT Product,
       COUNT(*)                     AS [Total Orders],
       SUM(TotalPrice)              AS [Total Revenue],
       ROUND(AVG(TotalPrice), 2)    AS [Average Order Value]
FROM Cleaned_Dataset
GROUP BY Product
ORDER BY [Total Revenue] DESC;

-- Q17. Percentage contribution of each product to total revenue
SELECT Product,
       SUM(TotalPrice) AS [Product Revenue],
       ROUND(SUM(TotalPrice) * 100.0 / SUM(SUM(TotalPrice)) OVER (), 2) AS [Revenue Share %]
FROM Cleaned_Dataset
GROUP BY Product
ORDER BY [Revenue Share %] DESC;


/* ---------- SECTION 6: WHERE + GROUP BY + HAVING ---------- */

-- Q18. Maximum price of each product among Cancelled orders
SELECT Product, MAX(TotalPrice) AS [Maximum Price]
FROM Cleaned_Dataset
WHERE OrderStatus = 'Cancelled'
GROUP BY Product
ORDER BY [Maximum Price] DESC;

-- Q19.  keep only products whose max cancelled price is above 3215
SELECT Product, MAX(TotalPrice) AS [Maximum Price]
FROM Cleaned_Dataset
WHERE OrderStatus = 'Cancelled'
GROUP BY Product
HAVING MAX(TotalPrice) > 3215
ORDER BY [Maximum Price] DESC;

-- Q20. Products that have more than 160 orders (HAVING with COUNT)
SELECT Product, COUNT(*) AS [Total Orders]
FROM Cleaned_Dataset
GROUP BY Product
HAVING COUNT(*) > 160
ORDER BY [Total Orders] DESC;