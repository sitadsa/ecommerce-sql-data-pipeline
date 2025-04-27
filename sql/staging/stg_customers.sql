CREATE OR REPLACE TABLE stg_customers AS
SELECT
    customer_id,
    full_name,
    email,
    registered_date
FROM raw_customers;
