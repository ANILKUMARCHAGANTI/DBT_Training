{{

    config(
        materialized = 'table', 
        pre_hook = "insert into dbt_Dataset.sample_id values (0)",
        post_hook = "insert into dbt_Dataset.sample_id values (1)"
    )

}}
with cte_1 as (
    select * from {{ref('src_hosts_old')}}
    where is_superhost is not null
)
 
SELECT    
host_id,     
COALESCE(host_name, 'Anonymous') AS host_name,     
is_superhost,     
created_at,     
updated_at
FROM cte_1