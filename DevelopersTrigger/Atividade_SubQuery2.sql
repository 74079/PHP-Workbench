
-- 1. Escreva uma consulta para encontrar o nome (first_name, last_name) dos funcionários
-- que têm um gerente e trabalharam em um departamento com sede nos EUA.
select e.FIRST_NAME, e.LAST_NAME from employees e 
where e.MANAGER_ID in (select e.MANAGER_ID from employees e, jobs j, departments d, locations l, countries c
					  where e.JOB_ID = j.JOB_ID and e.DEPARTMENT_ID = d.DEPARTMENT_ID and d.LOCATION_ID = l.LOCATION_ID 
                      and l.COUNTRY_ID = c.COUNTRY_ID 
					  and j.JOB_TITLE like '%Manager%' and c.COUNTRY_ID = 'US');

-- 2. Escreva uma consulta para encontrar o nome (first_name, last_name) dos funcionários que são gerentes.
select e.FIRST_NAME, e.LAST_NAME, e.JOB_ID from employees e 
where e.JOB_ID in (select j.JOB_ID from jobs j where j.JOB_TITLE like '%Manager%' group by j.JOB_ID);

-- 3. Escreva uma consulta para encontrar o nome (first_name, last_name)
--    e o salário dos funcionários cujo salário é maior que o salário médio.
select e.FIRST_NAME, e.LAST_NAME, e.SALARY from employees e
where e.SALARY > (select AVG(SALARY) from employees) order by 3 asc;