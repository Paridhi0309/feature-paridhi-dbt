{{config(
    materialized='table'
)}}

WITH orders as
(
    SELECT
        o.customer_id,
        c.customer_name,
        COUNT(o.order_id) as total_orders,
        SUM(p.price*o.quantity) as total_spent
    FROM {{ ref('stg_orders')}} as o
    JOIN {{ ref('stg_customers')}} as c on o.customer_id=c.customer_id
    JOIN {{ ref('stg_products')}} as p on o.product_id=p.product_id
    GROUP BY o.customer_id,c.customer_name
)

select * from orders