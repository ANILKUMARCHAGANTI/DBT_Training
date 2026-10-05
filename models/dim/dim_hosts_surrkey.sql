{{

    config(
        materialized = 'table'
    )

}}
with cte_1 as (
    select * from {{ref('src_hosts_old')}}
    where is_superhost is not null
)
 
SELECT 
{{ dbt_utils.generate_surrogate_key(['host_id','is_superhost'])}} as host_sk,
host_id,     
COALESCE(host_name, 'Anonymous') AS host_name,     
is_superhost,     
created_at,     
updated_at
FROM cte_1