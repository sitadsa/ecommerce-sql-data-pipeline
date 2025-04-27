CREATE OR REPLACE TABLE stg_orders AS
SELECT
    order_id,
    customer_id,
    product_id,
    CAST(price AS FLOAT64) AS price,
    CAST(quantity AS INT64) AS quantity,
    price * quantity AS total_amount,
    DATE(order_date) AS order_date
FROM raw_orders
WHERE order_status = 'completed';
