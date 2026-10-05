
select * from {{ref('dim_listings_w_hosts')}} where 
host_id = '{{var("my_host_id")}}'
