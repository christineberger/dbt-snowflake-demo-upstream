with

int_data as (
    select * from {{ ref('foundational_project', 'foundation_int_model') }}
)

select * int_data
