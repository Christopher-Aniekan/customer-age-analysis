# customer-age-analysis
SQL practice project focused on customer age analysis and classification
# Customer Age Analysis

This SQL query analyzes customers based on the average and oldest age within their country.

### What this query does

- Calculates the average age for each country using `AVG()`
- Finds the oldest customer in each country using `MAX()`
- Calculates each customer's age difference from the oldest customer
- Uses `CASE` to classify customers as:
  - Oldest
  - Above Average
  - Below Average
- Uses a derived table and `JOIN` to combine the country-level calculations with individual customer records

### SQL concepts practiced

- `SELECT`
- `JOIN`
- Subqueries / Derived Tables
- `AVG()`
- `MAX()`
- `GROUP BY`
- `CASE`
- Column aliases
- Calculated columns

- ## Two CTEs: Country Statistics and Above-Average Customers

### What I practiced

- Common Table Expressions (CTEs)
- Using multiple CTEs in one query
- JOINs between CTEs and tables
- Aggregate functions: `AVG()`, `MAX()`, and `COUNT()`
- `WHERE` with calculated values
- `GROUP BY`
- `LEFT JOIN`
- `COALESCE()` for handling `NULL` values
- Aliases

### What the query does

The first CTE, `country_stats`, calculates the average age, oldest customer age, and total number of customers for each country.

The second CTE, `above_average`, counts how many customers are older than the average age of their country.

The final query combines both results to show the country statistics alongside the number of customers above the country average.

### Learning journey

This exercise builds on my previous SQL practice with aggregate functions, JOINs, subqueries, and CTEs. I practiced breaking a more complex problem into smaller steps using multiple CTEs.

This is part of my ongoing SQL learning and data analysis practice.
