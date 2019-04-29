Week 5
Opgave 1

1. 
select now();

2.
SELECT concat( last_name, ', ', job_id) as 'Employee and Title'
FROM hr.employees;

3.
SELECT employee_id, last_name, salary, round((salary * 115.5),0) as 'New Salary'
FROM hr.employees;

4.
SELECT employee_id, last_name, salary, round((salary * 1.155),0) as 'New Salary', (round((salary * 1.155),0) - salary) as Increase
FROM hr.employees;

5.
SELECT last_name, upper(length(last_name)) as length
from employees
WHERE last_name LIKE 'A%' OR last_name LIKE 'J%' OR last_name LIKE 'M%';

6.
SELECT first_name, last_name, length(concat(first_name, ' ' ,last_name)) as length
from employees

7.
SELECT last_name, floor(salary * 12) as 'Annual Salary'
from employees
Order By salary desc

8.
SELECT first_name, last_name, job_id
from employees
WHERE length(last_name) > 8

9.
SELECT last_name, salary, if(commission_pct is null, salary, (salary * 1.2)) as 'New Salary'
from employees
ORDER BY last_name ASC

10.
SELECT last_name, left(job_id, 2)
from employees
WHERE job_id LIKE '%MGR'

Opgave 2

1. 
SELECT round(avg(salary),0) as Average, round(max(salary), 0) as Maximum, round(min(salary), 0) as Minimum, round(sum(salary),0) as Sum
from employees

2.
SELECT job_id, round(avg(salary),0) as Average, round(max(salary), 0) as Maximum, round(min(salary), 0) as Minimum, round(sum(salary),0) as Sum
from employees
GROUP BY job_id

3.
SELECT job_id, count(employee_id) as count
from employees
GROUP BY job_id

4.
SELECT count(DISTINCT manager_id) as 'Number of Managers'
from employees

5.
SELECT (max(salary) - min(salary)) as Difference
from employees

6.
SELECT manager_id, min(salary) as Minimum
from employees
WHERE manager_id is not Null
GROUP BY manager_id
HAVING min(salary) > 6000
ORDER BY Minimum DESC;

7.
SELECT department_id
from employees
GROUP BY department_id
HAVING count(employee_id) > 10 

8.
SELECT  round(avg(salary), 2) as 'Average Salary', count(department_id) as Count
from employees
WHERE department_id = 90

9.
SELECT department_id, sum(salary) as 'Total Salary' 
from employees
GROUP BY department_id

10.
SELECT manager_id as 'Employee ID', round(avg(salary),2) as 'Average Salary' 
from employees
GROUP BY manager_id
HAVING count(employee_id) > 5

11.
SELECT job_id, count(employee_id) as count
from employees
GROUP BY job_id
HAVING avg(salary) > 8000