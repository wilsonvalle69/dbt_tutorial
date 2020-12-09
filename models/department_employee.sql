{{ config(materialized='table') }}

with department as (
    select * from {{ ref('department') }}
),
employee as (
    select * from {{ ref('employee') }}
),
final as (
    select 
        d.id as department_id, d.name as department_name,
        d.id as employee_id, e.name, e.dob, e.country
    from employee as e
    left join department as d on e.department_id = d.id
)

select * from final