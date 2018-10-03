--Lab 10

--Answer 1
SELECT start_date, end_date, ROUND(((end_date-start_date)/365)*2000) AS "Total Hours Worked"
FROM hr.job_history
ORDER BY "Total Hours Worked" DESC;

--Answer 2
SELECT first_name, last_name, commission_pct, hire_date
FROM hr.employees
WHERE first_name like'J%' AND commission_pct> 0.1;

--Answer 3
SELECT first_name, last_name, commission_pct, hire_date
FROM hr.employees
WHERE first_name LIKE'J%' AND commission_pct> 0.1 AND last_name LIKE '%o%' AND hire_date < '01-JUN- 06';

--Answer 4
SELECT region_id, region_name, SUBSTR(region_name,-1) AS "Last Letter in Region Name"
FROM hr.regions
WHERE LENGTH(region_name) > 4
ORDER BY 3;

--Answer 5
SELECT LPAD(first_name,7) ||' '|| RPAD(last_name,4)||' '||('earns') ||'     '|| salary AS "Lpad rpad Example"
FROM hr.employees
WHERE department_id =100
ORDER BY 1;


--Answer 6
SELECT last_name, hire_date, TRUNC((TO_DATE('01-JUN-2010', 'DD-MM-YYYY') - hire_date)*2) AS "Bonus"
FROM hr.employees
ORDER BY 3 DESC;

--Answer 7
SELECT first_name, last_name, employee_id, 
   CASE MOD(employee_id,4) WHEN 0 THEN 1
   WHEN 1 THEN 2
   WHEN 2 THEN 3
   ELSE 4 END "Team#"
FROM hr.employees;

--Answer 8
SELECT 
   CASE MOD(employee_id,4) WHEN 0 THEN 1
   WHEN 1 THEN 2
   WHEN 2 THEN 3
   ELSE 4 END AS "Team#"
FROM hr.employees;

--Answer 9
SELECT hire_date, TO_CHAR(ADD_MONTHS(hire_date, -15), 'dd-MON-yyyy') AS "15 Months Before The Hire Date"
FROM hr.employees;

--Answer 10
SELECT last_name, salary, NVL(commission_pct,0), NVL2(commission_pct,'Comission Earner','Not a Comission Earner')
FROM hr.employees;

--Answer 12
SELECT job_id, AVG(salary) AS "Average Salary", COUNT(job_id) AS "Total"
FROM HR.EMPLOYEES
GROUP BY job_id
HAVING AVG(salary) > 10000 AND COUNT(job_id) > 1;
 
 --Answer 13
SELECT region_name
FROM hr.regions
NATURAL JOIN hr.countries;

--Answer 14
SELECT last_name, department_name
FROM hr.employees e, hr.departments d
WHERE d.department_id = e.department_id(+)
ORDER BY 2;

--Answer 15
SELECT last_name, department_name
FROM hr.employees e, hr.departments d
WHERE 
    d.department_id = e.department_id
    AND e.employee_id is  null
ORDER BY 2;

--Answer 16
SELECT manager_id
FROM hr.employees
WHERE department_id IN(20,30)
UNION
SELECT manager_id
FROM hr.employees
WHERE department_id NOT IN 50 AND department_id IN(20,30);

--Answer 17
SELECT 'Adminisration Team Member: ' || ' ' ||SUBSTR(first_name,1,1) || ' ' || last_name AS "Initial and Last Name"
FROM hr.employees
WHERE job_id  like 'AD%'; 

--Answer 18
SELECT TO_CHAR(60*1*60*24*365,'99,999,999') AS "Seconds in a year"
FROM dual;


--Answer 20
SELECT TO_CHAR(SYSDATE, 'DAY,MON YYYY') AS "Formatted current date"
FROM dual;