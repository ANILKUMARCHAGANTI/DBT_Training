{%set countries = ['USA', 'Canada', 'Spain', 'Pakistan', 'Iran']%}

{% for country in countries %}

    '{{country}}'
    {{1+1}}
 
{% endfor %}