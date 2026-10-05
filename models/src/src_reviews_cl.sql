{{

    config(
        materialized = 'table', 
        cluster_by =[
            "listing_id", "reviewer_name", "sentiment"
        ],
        require_partition_filter = true
    )

}}

with cte_1 as
(
select 
* 
from 
{{source('airbnb','reviews')}}
)
select listing_id, date as review_date,reviewer_name,comments,sentiment from cte_1