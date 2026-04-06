SELECT
  p.name,
  p.category,
  COUNT(oi.id) AS units_sold,
  ROUND(SUM(oi.sale_price), 2) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p ON oi.product_id = p.id
WHERE oi.status = 'Complete'
GROUP BY p.name, p.category
ORDER BY total_revenue DESC
LIMIT 10
