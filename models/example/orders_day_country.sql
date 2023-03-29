{{ config(materialized='view') }}

select o_orderdate, n_name, sum(o_totalprice) sales_t, count(*) sales_n from {{ ref('orders_fact')}}
group by o_orderdate, n_name
order by o_orderdate, n_name