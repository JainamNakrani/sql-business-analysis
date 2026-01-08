-- 1. Total Revenue
SELECT SUM(quantity * price) AS total_revenue
FROM sales;

-- 2. Revenue by Month
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  SUM(quantity * price) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- 3. Top 10 Customers
SELECT customer_id, SUM(quantity * price) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- 4. Country-wise Sales
SELECT country, SUM(quantity * price) AS revenue
FROM sales
GROUP BY country;

-- 5. Repeat Customers
SELECT customer_id, COUNT(DISTINCT order_id) AS orders
FROM sales
GROUP BY customer_id
HAVING orders > 1;

