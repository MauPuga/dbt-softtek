{{ config(materialized='table') }}

SELECT 
    O_ORDERDATE
    , SUM(O_TOTALPRICE) OVER(ORDER BY O_ORDERDATE) AS order_total_on_date
FROM 
    SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
ORDER BY 
    O_ORDERDATE