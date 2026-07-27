{% set flavors=['chocolate','vanilla','strawberry' ]%}

SELECT 'Today I want chocolate ice cream!' AS message
{% for flavor in flavors[1:] %}
UNION ALL
SELECT 'Today I want {{ flavor }} ice cream!' AS message
{% endfor %}