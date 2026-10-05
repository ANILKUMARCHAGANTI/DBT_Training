{%set my_host_id = 9%}

{% if my_host_id < 10 %}
 
    SELECT 2+3
{% else %}
 
    SELECT 12+13
 
{% endif %}