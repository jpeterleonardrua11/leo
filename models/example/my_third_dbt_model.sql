{{ config(materialized="table") }}
select emp_id, emp_name
from dbt_pro.dbt_schema.employee
union all
select emp_id, emp_name
from dbt_pro.dbt_schema.employee1
