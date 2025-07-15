
SELECT * FROM transactions LIMIT 10;

--TOP spending locations
SELECT location, SUM(amount) AS total_spent
FROM transactions
GROUP BY location
ORDER BY total_spent DESC
LIMIT 5;

--Monthly spening trend
SELECT 
   SUBSTR(date,1,7) AS month,
   SUM(amount) AS total_spent
FROM transactions 
GROUP BY month
ORDER BY month;

--Payment Type distribution
SELECT payment_type, COUNT(*) AS total_count
FROM transactions 
GROUP BY payment_type 
ORDER BY total_count DESC;

--Suspicious Transactions over 10,000$
SELECT *
FROM transactions
WHERE amount > 1000
ORDER BY amount DESC;

--Most popular merchants
SELECT merchant,COUNT(*) AS txn_count
FROM transactions
GROUP BY merchant 
ORDER BY txn_count DESC 
LIMIT 10;
