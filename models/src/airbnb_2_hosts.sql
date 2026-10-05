{{
 
    config(
        materialized = 'table'
    )
 
}}
 
 
with cte_1 as
(
select 
*
from
{{source('airbnb_2','new_hosts')}}
)
select
id as host_id, 
name as host_name,
is_superhost,
created_at,
updated_at
from
cte_1

