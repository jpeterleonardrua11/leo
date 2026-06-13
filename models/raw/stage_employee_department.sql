{{ config(materialized="table") }}

{% set start_date='2020-03-15' %}
{% set end_date='2021-06-01' %}

select e.emp_id, concat(e.emp_name,'-',d.department) as emp_dept
from {{ ref("employee") }} e
inner join
    {{ ref("job_history") }} jh
    on e.emp_id = jh.emp_id
    and jh.start_date between '{{start_date}}' and '{{end_date}}'
inner join {{ ref("department") }} d on d.department = e.department

