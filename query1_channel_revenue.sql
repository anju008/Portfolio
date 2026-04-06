SELECT
  event_type,
  COUNT(*) AS event_count
FROM `bigquery-public-data.thelook_ecommerce.events`
GROUP BY event_type
ORDER BY event_count DESC
