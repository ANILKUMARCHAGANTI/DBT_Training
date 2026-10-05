{% macro audit_end() %}
 
    {{ log("========== DBT RUN ENDED ==========", info=true) }}
 
{% endmacro %}