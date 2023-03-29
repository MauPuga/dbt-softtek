{{ config(materialized='table') }}

select C_CUSTKEY, C_NAME, C_ADDRESS, C_NATIONKEY, C_PHONE, C_ACCTBAL, C_MKTSEGMENT, C_COMMENT, N_NAME from {{ ref('staging_customers')}}
join {{ ref('staging_nation')}} on c_nationkey = n_nationkey