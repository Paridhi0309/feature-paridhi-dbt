{{
    config(materialized='ephemeral')

}}

SELECT
    product_id,
    product_name,
    price
FROM {{ source('shopping','products')}}