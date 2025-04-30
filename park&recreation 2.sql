with CTE_Females( ID ,full_Name,age, gender)  as
( select employee_id , concat(first_name,' ',last_name) ,age , gender
	from employee_demographics
    where age> 40 and gender = 'female'
),
 CTE_Males( ID ,full_Name,age,gender) as 
( select employee_id , concat(first_name,' ',last_name),age,gender
	from employee_demographics
    where age> 45 and gender = 'male'
),
CTE_All as
( select* from CTE_Males
    union all
	select* from CTE_Females
),
 CTE_Salary as
( select employee_id , salary
	from employee_salary
    where salary> 35000
)

select CTE_All.ID , CTE_All.full_Name, CTE_All.age,CTE_All.gender ,CTE_Salary.salary
from CTE_All 
join CTE_Salary
	on CTE_All.ID = CTE_Salary.employee_id
order by gender desc
;