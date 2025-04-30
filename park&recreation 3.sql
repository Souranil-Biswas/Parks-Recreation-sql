SELECT first_name , last_name , "expensive" as lebel
from parks_and_recreation.employee_salary 
where salary > 65000
union all
SELECT first_name , last_name , 'OLD MAN' as lebel
from parks_and_recreation.employee_demographics
where gender = 'male'
and age > 40
union all
SELECT first_name , last_name , 'OLD lady' as label
from parks_and_recreation.employee_demographics
where gender = 'female'
and age > 40

order by first_name
