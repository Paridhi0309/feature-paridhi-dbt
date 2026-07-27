--JINJA TEMPLATING
{% set selff = [1,'myself','I','U'] %}

SELECT 
    '{{ selff[4] }}' AS first_item,
    '{{ selff[3] }}' AS second_item,
    '{{ selff[2] }}' AS third_item
