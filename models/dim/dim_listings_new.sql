with cte_1 as (
    select * from {{ref('src_listings')}}
)

select * from cte_1
where created_at >= '{{var("my_new_var")}}'