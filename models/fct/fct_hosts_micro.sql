{{
    config(
        materialized = 'incremental',
        incremental_strategy = 'microbatch',
        event_time='created_at',
        begin = '2009-06-04',
        batch_size = 'year',
        partition_by = {
            "field" : "created_at",
            "data_type" : "timestamp",
            "granularity" : "year"
        },
        enabled = false
    )
}}

with cte_1 as
(
    select
        *
    from
        {{ ref('src_hosts') }}
)

select * from cte_1