-- Calculate The Total Sales Per Month
-- And The Running Total Of Sales Over Time

SELECT
order_date,
total_sales,
SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales, -- Window Function
AVG(avg_price) OVER (ORDER BY order_date) AS moving_average_price
FROM 
(
SELECT
DATETRUNC(year, order_date) AS order_date,
SUM(sales_amount) AS total_sales,
AVG(sls_price) AS avg_price
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(year, order_date)
)t