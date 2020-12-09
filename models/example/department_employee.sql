with department as (
    select id,
        name 
    from aa_department
),
employee as (
    select id, 
        name, 
        dob,
        department_id,
        country
    from aa_employee
),
final as (
    select 
        d.id as department_id, d.name as department_name,
        d.id as employee_id, e.name, e.dob, e.country
    from employee as e
    left join department as d on e.department_id = d.id
)

select * from final