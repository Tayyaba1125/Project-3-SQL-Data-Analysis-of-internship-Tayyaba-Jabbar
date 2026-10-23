# SQL Data Analysis ( Project 3)

Extracting business insights from an e-commerce orders dataset using SQL Server.

## Dataset
`Cleaned_Dataset.csv` has 1,200 orders and 14 columns

## Skills Used
- `SELECT`, `TOP`, column aliases
- `WHERE` with equality, comparison, `AND` and `LIKE`
- `ORDER BY` (single and multiple columns)
- `GROUP BY` and `HAVING`
- Aggregations: `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`
- Window function for percentage contribution (`SUM() OVER ()`)

## Files
- `Project3_SQL_Analysis.sql`: all queries with comments and expected results
- `Cleaned_Dataset.csv`: dataset
- `screenshots/`: query outputs from SQL Server Management Studio

## Key Insights
- Total revenue is about 1,264,762, with an average order value of about 1,054.
- Chair is the top-selling product by quantity (562 units) and Phone is the lowest (411 units).
- 497 of 1,200 orders (about 41%) were Cancelled or Returned, which points to a major area for improvement.
- Cancelled orders include high-value items: Chair (3,384.90), Tablet (3,370.20), Monitor (3,253.60) and Printer (3,215.15) each had a cancelled order above 3,215.

## Screenshots

### 1. SELECT Query
![SELECT Query](Select.png)

### 2. SELECT with WHERE
![SELECT with WHERE](Select%20with%20where.png)

### 3. WHERE Clause
![WHERE Clause](select%20with%20where%20clause.png)

### 4. AND Operator
![AND Operator](AND.png)

### 5. LIKE Operator
![LIKE Operator](Like.png)

### 6. TOP Query
![TOP Query](Top.png)

### 7. ORDER BY DESC
![ORDER BY DESC](Total%20price%20desc.png)

### 8. GROUP BY
![GROUP BY](group%20by.png)

### 9. GROUP BY with ORDER BY
![GROUP BY with ORDER BY](group%20by%20with%20order%20by.png)

### 10. GROUP BY with ORDER BY DESC
![GROUP BY with ORDER BY DESC](group%20by%20with%20order%20by%20desc.png)

### 11. HAVING Clause
![HAVING Clause](Having%20.png)

### 12. HAVING with COUNT
![HAVING with COUNT](having%20with%20count.png)

### 13. Aggregate Function - COUNT
![COUNT](aggregate%20function%28count%29.png)

### 14. Aggregate Functions - MAX and MIN
![MAX MIN](aggregate%20functions%28max%2Cmin%29.png)

### 15. Percentage Contribution
![Percentage Contribution](Percentage%20Contribution.png)

## Tool
Microsoft SQL Server 
