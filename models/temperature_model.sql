{% set temperature = 69.0 %}

SELECT 
    'On a day like this,I especially like ' ||
    CASE
        WHEN {{ temperature }} > 70.0 THEN 'a refreshing mango sorbet.'
        ELSE 'a decadent chocolate ice cream.'
    END AS message