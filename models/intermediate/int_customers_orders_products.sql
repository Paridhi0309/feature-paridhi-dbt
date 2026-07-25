select
    o.order_id,
    o.order_date,
    c.customer_id,
    c.customer_name,
    c.email,
    p.product_id,
    p.product_name,
    p.price,
    o.quantity,
    (o.quantity*p.price) as total_order_value
from RAW.SHOP.orders o
join RAW.SHOP.customers c
    on o.customer_id=c.customer_id
join RAW.SHOP.products p
    on o.product_id=p.product_id