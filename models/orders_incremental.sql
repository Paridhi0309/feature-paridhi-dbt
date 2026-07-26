{{ config(materialized='incremental',unique_key='order_id')}}

WITH source_data as(
SELECT 
    order_id,
    order_date,
    customer_id,
    product_id,
    quantity
FROM {{ source('shopping','orders') }}
)

select 
    order_id,
    order_date,
    customer_id,
    product_id,
    quantity
from source_data
{% if is_incremental() %}
where order_date> (select max(order_date) from {{ this }})
{% endif %}
