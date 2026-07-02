{{ config(group='finance_models') }}

select * from {{ ref('stg_tpch__customers') }}