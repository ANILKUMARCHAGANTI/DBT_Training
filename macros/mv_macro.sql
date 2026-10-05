{% macro mv_macro() %}
    {% set sql %}
        create materialized view if not exists 
            `{{ target.project }}.{{ target.dataset }}.atharv_materialized_view`
            as 
            select * from {{ref('src_hosts_old')}}
    {% endset %}

    {% if execute %}
        {{log('Creating MV...', info=True)}}
        {% do run_query(sql) %}
        {{log('Created MV successfully...', info=True)}}
    {% endif %}    

{% endmacro %}{% macro get_table_columns(model_name) %}
 
    {% set relation = adapter.get_relation(
        database=target.database,
        schema=target.schema,
        identifier=model_name
    ) %}
 
    {% set columns = adapter.get_columns_in_relation(relation) %}
 
    {% for column in columns %}
 
        {{ log(
            "Column: " ~ column.name ~
            " | Type: " ~ column.data_type,
            info=true
        ) }}
 
    {% endfor %}
 
{% endmacro %}