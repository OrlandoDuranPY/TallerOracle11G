-- 1 

SELECT first_name, last_name, (SYSDATE-hire_date) AS "Antigüedad"
FROM employees 
WHERE department_id = 80;

-- 2 
SELECT employee_id, last_name, TRUNC(salary*1.20) AS "New Salary"
FROM employees;

-- 3
SELECT employee_id, last_name, TRUNC(salary*1.20) AS "New Salary", (TRUNC(salary*1.20)-salary) AS "Increase"
FROM employees;

-- 4
SELECT INITCAP(first_name), INITCAP(last_name),LENGTH(last_name)
FROM employees
WHERE last_name LIKE '%J%'
OR last_name LIKE '%A%'
OR last_name LIKE '%M%'
ORDER BY last_name ASC;

-- 5 
SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) AS "MONTHS_WORKED"
FROM employees
ORDER BY MONTHS_BETWEEN(SYSDATE, hire_date) DESC;

-- 6 
SELECT CONCAT(first_name, CONCAT(' ', CONCAT(last_name, CONCAT(' gana ', CONCAT(salary, CONCAT(' mensuales pero quiere ', (2*salary)))))))
FROM employees;

-- 7
SELECT first_name, last_name, LPAD(salary, 15, '$') AS "SALARIO FORMATEADO"
FROM employees;

-- 8 
SELECT UPPER(first_name), UPPER(last_name), salary, ROUND(commission_pct)
FROM employees
WHERE job_id = 'SA_REP';

-- 9 

SELECT employee_id, UPPER(first_name), UPPER(last_name), job_id
FROM employees
WHERE LENGTH(first_name) > 5;

-- 10

SELECT employee_id, last_name, salary, commission_pct, hire_date
FROM employees
WHERE commission_pct > (salary*0.15)
OR last_name LIKE '___s%'
AND TO_CHAR(hire_date, 'YYYY') = 2005;

SELECT * FROM employees;