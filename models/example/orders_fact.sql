{{ config(materialized='table') }}

select O_ORDERKEY, O_CUSTKEY, O_ORDERSTATUS, O_TOTALPRICE, O_ORDERDATE, O_ORDERPRIORITY, O_CLERK, O_SHIPPRIORITY, O_COMMENT, N_NAME from {{ ref('staging_orders')}}
join {{ ref('customer_dim')}} on o_custkey = c_custkey