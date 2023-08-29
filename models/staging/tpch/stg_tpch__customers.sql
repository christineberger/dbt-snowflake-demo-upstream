with 

source as (

    select * from {{ source('tpch', 'customer') }}

),

renamed as (

    select
        c_custkey::string as customer_id,
        c_name as customer_name,
        c_address as customer_address,
        c_nationkey::string as nation_id,
        c_phone as customer_phone_number,
        c_acctbal as customer_account_balance,
        c_mktsegment as customer_marketing_segment,
        c_comment as customer_comment
    from source

)

select * from renamed
