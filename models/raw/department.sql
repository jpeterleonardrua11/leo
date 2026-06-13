{{
    config(
        materialized='table'
    )
}}

select * from dbt_pro.dbt_schema.department