with 

source as (

    select * from {{ source('tpch', 'orders') }}

),

renamed as (

    select
        o_orderkey::string as order_id,
        o_custkey::string as customer_id,
        o_orderstatus as order_status,
        round(o_totalprice, 2) as order_total,
        o_orderdate::date as order_date,
        o_orderpriority as order_priority,
        o_clerk as order_clerk,
        o_shippriority as order_shipping_priority,
        o_comment as order_comment
        
    from source

)

select * from renamed
