✅ 1. Get First 10 Customers
SELECT * FROM customers LIMIT 10;
Why? This gives me a quick preview of the customer list — perfect for spot-checking if my data is loaded correctly or when im building a dashboard.


✅ 2. Customers Who Signed Up Before Jan 1, 2024
SELECT name, email, signup_date 
FROM customers 
WHERE signup_date < '2024-01-01';
Why? Helps me find long-term customers. i can target them with loyalty perks or special discounts since they’ve been with me for a while.


✅ 3. Count of Total Orders
SELECT COUNT(*) AS total_orders FROM orders;
Why? Quickly shows how many total purchases have been made — a great way to measure business performance over time.


  
✅ 4. Average Payment Amount
SELECT AVG(amount) AS average_payment FROM payments;
Why? Tells me how much customers spend on average. This can help me set sales goals or introduce offers like "Spend ₹500 and get 10% off."


✅ 5. Orders Placed in March 2024
SELECT * 
FROM orders 
WHERE order_date BETWEEN '2024-03-01' AND '2024-03-31';
Why? Helps track business activity for a specific month — useful for tax reporting, marketing analysis, or seasonal trend tracking.


✅ 6. Top 5 Most Expensive Products
SELECT * 
FROM products 
ORDER BY price DESC 
LIMIT 5;
Why? Finds me premium products — good for marketing campaigns or to check if these products are selling well or need a price rethink


✅ 7. Revenue Per Customer
SELECT customer_id, SUM(amount) AS total_spent 
FROM payments 
GROUP BY customer_id 
ORDER BY total_spent DESC;
Why? Identifies me highest-spending customers. i can offer them special VIP benefits, personalized deals, or thank-you gifts.


✅ 8. Customers Whose Name Starts with 'A'  
SELECT * 
FROM customers 
WHERE name LIKE 'A%';
Why? Example of searching patterns — this can be used to filter names, emails, product codes, etc. Useful for support, filtering, or reports.


  ✅ 9. Number of Products in Each Category
SELECT category, COUNT(*) AS product_count 
FROM products 
GROUP BY category;
Why? Tells me how  product catalog is distributed — are you selling more electronics or clothing? Helps with inventory planning.


  ✅ 10. Monthly Revenue Trend
SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month, SUM(amount) AS monthly_revenue
FROM payments
GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
ORDER BY month;
Why? Shows how  sales grow month by month. Helps in identifying high or low-performing months for better business strategy


  
































