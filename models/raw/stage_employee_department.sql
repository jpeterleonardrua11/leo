{{ config(materialized="table") }}

select e.emp_id, concat(e.emp_name, '-', d.department)
from {{ ref("employee") }} e
inner join
    {{ ref("job_history") }} jh
    on e.emp_id = jh.emp_id
    and start_date between '2020-03-15' and '2021-06-01'
inner join {{ ref("department") }} d on d.department = e.department

