# SQL Data Analysis ( Project 3)

Extracting business insights from an e-commerce orders dataset using SQL Server.

## Dataset
`Cleaned_Dataset.xlsx` has 1,200 orders and 14 columns

## Skills Used
- `SELECT`, `TOP`, column aliases
- `WHERE` with equality, comparison, `AND` and `LIKE`
- `ORDER BY` (single and multiple columns)
- `GROUP BY` and `HAVING`
- Aggregations: `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`
- Window function for percentage contribution (`SUM() OVER ()`)

## Files

- `Project 3 intership.sql`: All SQL queries with comments.
- `Cleaned_Dataset.xlsx`: Dataset containing 1,200 orders and 14 columns.
- PNG files: SQL query output screenshots from SQL Server Management Studio.

## Key Insights
- Total revenue is about 1,264,762, with an average order value of about 1,054.
- Chair is the top-selling product by quantity (562 units) and Phone is the lowest (411 units).
- 497 of 1,200 orders (about 41%) were Cancelled or Returned, which points to a major area for improvement.
- Cancelled orders include high-value items: Chair (3,384.90), Tablet (3,370.20), Monitor (3,253.60) and Printer (3,215.15) each had a cancelled order above 3,215.


## Screenshots

### 1. Aggregate Functions
![Aggregate Functions](aggregate%20function(sum,avg,count).png)

### 2. GROUP BY with ORDER BY DESC
![GROUP BY with ORDER BY DESC](group%20by%20with%20order%20by%20desc.png)

### 3. Percentage Contribution
![Percentage Contribution](Percentage%20Contribution.png)

**Note:** The remaining SQL query output screenshots are available as PNG files in the repository.

## Tool
Microsoft SQL Server 
