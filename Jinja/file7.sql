{% set columns = [
    'host_id', 
    'host_name',
    'is_superhost'
] %}


select 
    {% for column in columns %}
        {{column}} {% if not loop.last %}, {% endif %}

    {% endfor %}
from 

{{ref('src_hosts_old')}}