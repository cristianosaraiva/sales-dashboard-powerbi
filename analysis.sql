-- Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM orders;

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Average Order Value
SELECT AVG(revenue) AS avg_order_value
FROM orders;

-- Revenue by Month
SELECT 
    month,
    SUM(revenue) AS total_revenue
FROM orders
GROUP BY month
ORDER BY total_revenue DESC;

-- Top Customers
SELECT 
    customer_name,
    SUM(revenue) AS total_revenue
FROM orders
GROUP BY customer_name
ORDER BY total_revenue DESC;

-- Revenue by Product
SELECT 
    product_name,
    SUM(revenue) AS total_revenue
FROM orders
GROUP BY product_name
ORDER BY total_revenue DESC;
