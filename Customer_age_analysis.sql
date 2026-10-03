SELECT c.name, c.age, ca.country_avg_age, ca.country_oldest_age, (c.age - ca.country_oldest_age) AS age_difference_from_oldest, CASE

	WHEN c.age = ca.country_oldest_age THEN 'Oldest'
    WHEN c.age > ca.country_avg_age THEN 'Above Average'
    ELSE 'Below Average'
    END AS age_status
    
FROM customers AS c
JOIN (
		SELECT country_id, AVG(age) AS country_avg_age, MAX(age) AS country_oldest_age
        FROM customers
        GROUP BY country_id) AS ca
ON c.country_id = ca.country_id;
