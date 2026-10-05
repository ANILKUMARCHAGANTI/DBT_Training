select 
count(*), host_id
from 
{{ref('src_hosts')}}
group by host_id
having 
count(*) < 1
limit 10