{% test test_custom_sql(model) %}
    SELECT *
    FROM {{ model }}
    WHERE total_spent<0
{% endtest %}