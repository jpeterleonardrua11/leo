{{
    config(
        materialized='table'
    )
}}

select * from dbt_pro.dbt_schema.job_history