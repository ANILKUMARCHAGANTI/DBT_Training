'{{ target.project }}'
'{{ target.dataset }}'
'{{ target.type }}'


-- {%set my_host_id = 9%}

{% if target.project == 'racko-master-project-505113' %}
 
    SELECT 2+3
{% elif target.project == 'abc'%}
    select 10+30

{% endif %}




{% if execute %}
    {% set results = run_query(
    "select count(*) from Training_Dataset.src_hosts_old"
)%}
    {% set rowcount = results.columns[0].values()[0] %}
    {{log("rowcount = " ~ rowcount, info = true)}} 

{% endif %}