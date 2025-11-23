SELECT
    category,
    region,
    COUNT(*) as order_count,
    SUM(extended_price) as total_revenue,
    AVG(discount_rate) as avg_discount,
    COUNT(DISTINCT product_sku) as unique_products
FROM <table_name>
WHERE ts >= '2024-06-01' AND ts < '2024-07-01'
    AND category IN ('analytics', 'compute', 'observability')
    AND region IN ('us-east', 'us-west', 'eu-west')
GROUP BY category, region
ORDER BY total_revenue DESC;

