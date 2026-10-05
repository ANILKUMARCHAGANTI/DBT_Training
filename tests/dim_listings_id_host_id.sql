select *
from {{ ref('src_listings') }} l
left join {{ ref('src_hosts') }} h
    on l.host_id = h.host_id
where h.host_id is null