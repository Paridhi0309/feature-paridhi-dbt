{% macro get_orders_count() %}
    {% set query %}
        select count(*) as order_count
        from {{ ref('stg_orders') }}
    {% endset %}
    {{ return(query) }}
{% endmacro %}