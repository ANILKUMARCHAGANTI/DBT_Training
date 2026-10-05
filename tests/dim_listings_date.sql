select
* 
from
{{ref('dim_listings_w_hosts')}}
where created_at < updated_at
limit 10