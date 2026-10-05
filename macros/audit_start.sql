{% macro audit_start() %}
 
    {{ log("========== DBT RUN STARTED ==========", info=true) }}
    
{% endmacro %}