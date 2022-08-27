
SELECT * FROM employees ORDER BY salary ;

            
Select employees.department_id , COUNT (*) as total 
    FROM employees 
    GROUP BY employees.department_id;
    
SELECT * FROM departments where department_id ='50';


SELECT departments.department_name, COUNT(employee_id) from departments, employees
    where departments.department_id = employees.department_id
    group by department_name
    order by count(employee_id) DESC
    Fetch FIRST 1 rows only;


SELECT first_name, last_name, count(job_id) from employees
group by employees.first_name, employees.last_name;



SELECT employee_id, count(department_id) from job_history 
group by employee_id
having count(department_id) > 1;

SELECT * from employees
where employees.employee_id IN (SELECT employee_id from job_history 
group by employee_id
having count(department_id) > 1);

Select * from employees e
order by salary DESC
FETCH first 1 rows only;


SELECT * from departments d
join locations l on d.location_id = l.location_id
where l.city = 'Seattle';

SELECT d.department_name from departments d
join locations l on d.location_id = l.location_id
join countries c on c.country_id = l.country_id
join regions r on r.region_id = c.region_id
where r.region_name = 'Europe';


SELECT * FROM employees e 
where e.manager_id = '100';

SELECT * FROM employees e
where e.manager_id=100 AND e.department_id =90;

--QUEM ESTA AINDA A TRABALHAR NA EMPRESA
SELECT * from employees e
full outer join job_history jh on jh.employee_id = e.employee_id
where jh.employee_id IS NULL OR e.employee_id IS NULL;





