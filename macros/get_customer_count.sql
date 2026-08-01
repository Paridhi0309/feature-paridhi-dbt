{% macro get_customer_count() %}
    {% set query %}
        select count(*) as customer_count 
        from {{ ref('stg_customers') }}
    {% endset %}
    {{ return(query) }}
{% endmacro %}