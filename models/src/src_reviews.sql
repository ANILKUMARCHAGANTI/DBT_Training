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
            }
        } 
    )

}}

with cte_1 as
(
select 
* 
from 
{{source('airbnb','reviews')}}
)
select listing_id, date as review_date,reviewer_name,comments as review_comments,sentiment from cte_1