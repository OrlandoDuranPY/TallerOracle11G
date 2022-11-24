-- 1
-- Muestre el cargo (job_id) y la suma del salario de los empleados cuyo cargo no incluya el texto �REP�, 
-- teniendo suma del salario mayor a 13,000. Ordene los resultados por la segunda columna. 
-- Etiquete las columnas de manera correspondiente.

SELECT job_id, SUM(salary)
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary)>13000
ORDER BY SUM(SALARY);


-- 2
-- Muestre el salario m�ximo de los empleados agrupando por n�mero de departamento. 

SELECT MAX(salary)
FROM employees
GROUP BY department_id;


-- 3
-- Muestre el n�mero de departamento junto con su fecha de contrataci�n m�nima. 
-- Ordene el resultado por la segunda columna.

SELECT department_id, MIN(hire_date)
FROM employees
GROUP BY department_id
ORDER BY MIN(hire_date);


-- 4
-- Muestre el n�mero de departamento y el salario m�nimo por departamento. 
-- Etiquete las columnas como corresponda y ordene el resultado por la segunda columna.

SELECT department_id AS "N�mero de departamento", MIN(salary) AS "Salario m�nimo"
FROM employees
GROUP BY department_id
ORDER BY 2;


--5 
-- Muestre el n�mero de departamento, cargo (job_id), y porcentaje de comisi�n promedio (incluyendo nulos) 
-- agrupando por departamentos y cargos. Redondee la �ltima columna al segundo decimal y etiqu�tala como �COMM %�.

SELECT department_id, job_id, ROUND(AVG(commission_pct),2) AS "COMM %"
FROM employees
GROUP BY department_id, job_id;


-- 6 
-- Muestre el total de empleados con el cargo �IT_PROG� o �SA_REP�. Etiquete la columna como
-- corresponda.

SELECT COUNT(job_id)
FROM employees
WHERE job_id LIKE 'IT_PROG' OR job_id LIKE 'SA_REP'
GROUP by job_id;


-- 7 
-- Muestre el n�mero de departamento y el salario m�nimo de los empleados que tengan un salario m�nimo menor que 3,000.

SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) < 3000;


-- 8 
-- Muestre todos los salarios m�nimos, agrupando por n�mero de departamento. 
-- Muestre el resultado con el formato �$XX,XXX.00�. Etiquete la columna como corresponda.

SELECT department_id, MIN(TO_CHAR(salary, '$99,999.00')) AS "Salario M�nimo"
FROM employees
GROUP BY department_id;




SELECT * FROM employees;





















