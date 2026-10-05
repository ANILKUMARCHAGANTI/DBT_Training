select 
*
from 
{{ref('dim_listings_cleaned')}}
where 
minimum_nights < 2
limit 10