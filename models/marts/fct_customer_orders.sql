with

customers as (
    select * from {{ ref('stg_tpch__customers') }}
),

orders as (
    select * from {{ ref('stg_tpch__orders') }}
),

joined as (
    select
        orders.*,
        customers.c_name,
        customers.c_address,
        customers.c_nationkey,
        customers.c_phone,
        customers.c_acctbal,
        customers.c_mktsegment,
        customers.c_comment
    from orders
    left join customers
        on orders.o_custkey = customers.c_custkey 
)

select * from joined