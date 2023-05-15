with

stg_data as (
    select * from {{ ref('foundational_project', 'foundation_stg_model') }}
)

select * from stg_data
