select dem.employee_id as ID ,
sal.dept_id as depertment ,
concat(sal.first_name ,' ', sal.last_name) AS 'name',
sal.salary,
dep.department_name as dept,
dem.gender as gender,
dense_rank() over(partition by gender order by salary desc) as income_rank,
case
	when sal.salary >50000 then salary*1.05
    else salary*1.025
end as new_salary,
case
     when (CASE WHEN sal.salary > 50000 THEN sal.salary * 1.05
                  ELSE sal.salary * 1.025
             END)  > 60000 then 'high paid'
     when (CASE WHEN sal.salary > 50000 THEN sal.salary * 1.05
                  ELSE sal.salary * 1.025
             END)  < 30000 then 'low paid'
     else 'okay paid'
end as stat,
case 
	when dep.department_name = 'finance' then salary*0.1
end as bonus
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on sal.employee_id = dem.employee_id
inner join parks_and_recreation.parks_departments as dep
	on sal.dept_id = dep.department_id
order by department_id 
