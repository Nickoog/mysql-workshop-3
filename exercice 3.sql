SELECT LOWER(country), COUNT(country) AS total
FROM Address
GROUP BY COUNTRY ORDER BY total DESC;