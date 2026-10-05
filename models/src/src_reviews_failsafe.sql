{{

    config(
        materialized = 'table',
        partition_by = {
            "field" : "listing_id",
            "data_type" : "int64",
            "range" : {
                "start" : 3000,
                "end" : 60000000,
                "interval" : 1000000
            }}
            ,
             
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