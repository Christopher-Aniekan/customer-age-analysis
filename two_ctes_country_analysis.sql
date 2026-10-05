WITH 	country_stats AS ( SELECT country_id, AVG(age) AS country_avg_age, MAX(age) AS country_oldest_age, COUNT(*) AS country_customer_count
	FROM customers
    GROUP BY country_id), above_average AS ( SELECT c.country_id, COUNT(*) AS above_average_count
			FROM customers as c
            JOIN country_stats AS cs
            ON c.country_id = cs.country_id
            WHERE c.age > cs.country_avg_age
            GROUP BY c.country_id)
            
SELECT cs.country_id, cs.country_avg_age, cs.country_oldest_age, cs.country_customer_count, COALESCE(aa.above_average_count, 0) AS above_average_count
FROM country_stats AS cs
LEFT JOIN above_average AS aa
ON cs.country_id = aa.country_id; 
