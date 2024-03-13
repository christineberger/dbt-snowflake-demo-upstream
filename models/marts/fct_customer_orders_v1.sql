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
        customers.customer_name,
        customers.customer_address,
        customers.nation_id,
        customers.customer_phone_number,
        customers.customer_account_balance,
        customers.customer_marketing_segment,
        customers.customer_comment
    from orders
    left join customers
        on orders.customer_id = customers.customer_id 
)

select * from joined
