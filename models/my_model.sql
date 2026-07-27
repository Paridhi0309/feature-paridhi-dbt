{% set person={
    'name':'Paridhi',
    'number': 7986259870,
    'salary': 1200000
} %}

SELECT '{{ person.name}}' AS person_name,
        '{{ person.number }}' AS person_number,
        '{{person.salary}}' AS person_salary
