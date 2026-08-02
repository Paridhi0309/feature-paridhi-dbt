with customer_count as(
    {{ get_customer_count() }}
),
order_count as(
    {{ get_orders_count() }}
),
total_revenue as(
    {{ get_total_revenue() }}
)

select c.customer_count,
    o.order_count,
    t.total_revenue
from customer_count c
join order_count o on 1 = 1
join total_revenue t on 1 = 1