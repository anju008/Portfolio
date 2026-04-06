SELECT
  u.traffic_source,
  COUNT(DISTINCT o.order_id) AS orders,
  ROUND(SUM(oi.sale_price), 2) AS total_revenue,
  ROUND(AVG(oi.sale_price), 2) AS avg_order_value
FROM `bigquery-public-data.thelook_ecommerce.orders` o
JOIN `bigquery-public-data.thelook_ecommerce.users` u ON o.user_id = u.id
JOIN `bigquery-public-data.thelook_ecommerce.order_items` oi ON o.order_id = oi.order_id
WHERE o.status = 'Complete'
GROUP BY u.traffic_source
ORDER BY total_revenue DESC
