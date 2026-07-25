{{ config(materialized = 'view')}}

WITH source as(
SELECT 
    order_id,
    order_date,
    customer_id,
    product_id,
    quantity
FROM {{ source('shopping','orders') }}
)

select * from source