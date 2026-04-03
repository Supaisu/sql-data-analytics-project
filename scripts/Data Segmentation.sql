/* Segment Products Into Cost Ranges And
Count How Many Products Fall Into Each Segment */

WITH product_segments AS (
SELECT
product_key,
product_name,
cost,
CASE WHEN cost < 100 THEN 'Below 100'
	 WHEN cost BETWEEN 100 AND 500 THEN '100-500'
	 WHEN cost BETWEEN 500 AND 1000 THEN '500-1000'
	 ELSE 'Above 1000'
END cost_range
FROM gold.dim_products)

SELECT
cost_range,
COUNT(product_key) AS total_products
FROM product_segments
GROUP BY cost_range
ORDER BY total_products DESC

/* Group Customers Into Three Segments Based On Their Spending Behavior:
	- VIP: Customers With Atleast 12 Months Of History And Spending More Than 5,000
	- Regular: Customers With Atleast 12 Months Of History But Spending 5,000 or less.
	- New: Customers With A Lifespan Less Than 12 Months.
And Find The Total Number Of Customers By Each Group 
*/

WITH customer_spendIng AS (
SELECT
c.customer_key,
SUM(f.sales_amount) AS total_spending, 
MIN(order_date) AS first_order,
MAX(order_date) AS last_order,
DATEDIFF(month, MIN(order_date), MAX(order_date)) AS lifespan
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key = c.customer_key
GROUP BY c.customer_key
)

SELECT
customer_segment,
COUNT(customer_key) AS total_customers
FROM(
	SELECT
	customer_key,
	CASE WHEN lifespan >= 12 AND total_spending > 5000 THEN 'VIP'
		 WHEN lifespan >= 12 AND total_spending <= 5000 THEN 'Regular'
		 ELSE 'New'
	END customer_segment
	FROM customer_spending) t
GROUP BY customer_segment
ORDER BY total_customers DESC