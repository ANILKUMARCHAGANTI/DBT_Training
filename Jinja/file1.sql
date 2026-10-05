{%set my_host_id = ['12','13','14']%}

select * from {{ref('dim_listings_w_hosts')}} where 
host_id IN ({{my_host_id}})
