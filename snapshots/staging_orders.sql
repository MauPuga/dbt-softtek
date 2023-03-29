{% snapshot staging_orders %}
{{
    config(
        target_database='analytics',
        target_schema='snapshots',
        unique_key='o_orderkey',
        strategy='timestamp',
        updated_at='o_orderdate'
    )
}}

select * from {{ source('tables', 'orders')}}

{% endsnapshot %}