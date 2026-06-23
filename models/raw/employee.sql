{{
    config(
        tags=['hr_details']
    )
}}


{{
    config(
        materialized='table'
    )
}}

select * from {{ source('hr_info', 'employee') }}