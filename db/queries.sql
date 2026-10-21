SELECT customer_id, COUNT(*) AS orders, SUM(total) AS revenue
FROM orders
WHERE created_at >= NOW() - INTERVAL '90 days'
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 20;
