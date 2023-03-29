{% snapshot staging_nation %}
{{
    config(
        target_database='analytics',
        target_schema='snapshots',
        unique_key='n_nationkey',
        strategy='check',
        check_cols=['n_name']
    )
}}

select * from {{ source('tables', 'nation')}}

{% endsnapshot %}