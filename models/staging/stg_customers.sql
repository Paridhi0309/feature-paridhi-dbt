{{ config(materialized = 'view')}}

WITH source as (
    SELECT
        customer_id,
        customer_name,
        email
from {{ source('shopping','customers')}}
)
SELECT * from source