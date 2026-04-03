-- Find The Total Sales

SELECT SUM(sales_amount) AS total_sales FROM gold.fact_sales

-- Find How Many Items Are Sold

SELECT SUM(quantity) AS total_quantity FROM gold.fact_sales

-- Find The Average Selling Price

SELECT AVG(sls_price) AS avg_price FROM gold.fact_sales -- (Realised I Did Not Rename Price)

-- Find The Total Number Of Orders

SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales

-- Find The Total Number Of Products

SELECT COUNT(product_key) AS total_products FROM gold.dim_products
SELECT COUNT(DISTINCT product_key) AS total_products FROM gold.dim_products

-- Find The Total Number Of Customers

SELECT COUNT(customer_key) AS total_customers FROM gold.dim_customers

-- Find The Total Number Of Customers That Has Placed An Order

SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.fact_sales

-- Generate A Report That Shows All Key Metrics Of The Business

SELECT 'Total Sales' as measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity' as measure_name, SUM(quantity) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(sls_price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Products', COUNT(product_name) FROM gold.dim_products
UNION ALL
SELECT 'Total Nr. Customers', COUNT(customer_key) FROM gold.dim_customers