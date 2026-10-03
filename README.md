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

This is part of my ongoing SQL learning and data analysis practice.
