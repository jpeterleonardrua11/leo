{%  snapshot product_id_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='product_id',
        strategy='timestamp',
        updated_at='created_date',
    )
}}

select * from {{ source('hr_info', 'product') }}

{% endsnapshot %}