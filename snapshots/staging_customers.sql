{% snapshot staging_customers %}
{{
    config(
        target_database='analytics',
        target_schema='snapshots',
        unique_key='c_custkey',
        strategy='check',
        check_cols=['c_name', 'c_address', 'c_nationKey', 'c_phone']
    )
}}

select * from {{ source('tables', 'customer')}}

{% endsnapshot %}