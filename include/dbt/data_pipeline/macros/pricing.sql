{% macro discounted_price(extended_price, discount_percentage, scale=2) %}
    ({{ extended_price }} * (1 - {{ discount_percentage }}))::numeric(16, {{ scale }})
{% endmacro %}

{% macro discount_value(extended_price, discount_percentage, scale=2) %}
    ({{ extended_price }} * ({{ discount_percentage }} * -1))::numeric(16, {{ scale }})
{% endmacro %}