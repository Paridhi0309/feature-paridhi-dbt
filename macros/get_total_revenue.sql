{% macro get_total_revenue() %}
    {% set query %}
        select
            SUM(o.quantity * p.price) as total_revenue
            FROM {{ ref('stg_orders') }} o
            JOIN {{ ref(' stg_products') }} p
            ON o.product_id=p.product_id
    {% endset %}
    {{ return(query) }}
{% endmacro %}