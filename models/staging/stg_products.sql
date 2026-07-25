{{ config(materialized = 'view')}}

WITH source as (
SELECT
    product_id,
    product_name,
    price
from {{source('shopping','products')}}
)

select * from source