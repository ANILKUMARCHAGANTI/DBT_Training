select 
*
from
{{ref('src_listings')}}
where 
price_str < 0
limit 10