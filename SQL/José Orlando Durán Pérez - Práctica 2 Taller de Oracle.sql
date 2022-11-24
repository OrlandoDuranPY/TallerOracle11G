-- 1
--Cree una consulta para mostrar el apellido y el salario de los empleados que
--ganan más de $12.000.

SELECT last_name, first_name
FROM employees
WHERE salary > 12000;


-- 2
-- Cree una consulta para mostrar el apellido del empleado y el número de
--departamento para el empleado con ID 176.

SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;


-- 3
--Modifique la consulta del ejercicio 1 para mostrar el apellido y el salario de todos
--los empleados cuyos salarios no se encuentren entre $5.000 y $12.000.

SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;


-- 4
--Muestre el apellido del empleado, el identificador de cargo (job_id) y la fecha de
--contratación de los empleados contratados entre el 20 de febrero de 2008 y el 1 de
--mayo de 2008. Ordene la consulta en orden ascendente por fecha de
--contratación.

SELECT last_name, job_id, hire_date
FROM employees
WHERE hire_date BETWEEN '20/02/2008' AND '01/05/2008'
ORDER BY hire_date ASC;


 -- 5 
-- Muestre el apellido y el número de departamento de los empleados de los
--departamentos 20 y 50 en orden alfabético por apellido.

SELECT last_name, department_id
FROM employees
WHERE department_id IN(20,50)
ORDER BY last_name;


-- 6 
--Modifique la consulta del ejercicio 5 para mostrar el apellido y el salario de los
--empleados que ganan entre $5.000 y $12.000, y están en el departamento 20 ó 50.
--Etiquete las columnas Employee y Monthly Salary, respectivamente

SELECT last_name "Employee", salary "Monthly Salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (20, 50)
ORDER BY last_name;


-- 7 
--Muestre el apellido y la fecha de contratación de todos los empleados contratados en 2004.

SELECT last_name, hire_date
FROM employees
WHERE TO_CHAR(hire_date, 'YYYY') = 2004;


-- 8 
-- Muestre el apellido y el cargo de todos los empleados que no tienen gerente (manager_id).

SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;


-- 9 
-- Muestre el apellido, el salario y la comisión para todos los empleados que ganan
-- comisiones (commission_pct). Ordene los datos en orden descendente de
-- salarios y comisiones.

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;


-- 10 
-- Muestre el apellido de todos los empleados que tengan la “a” como tercera letra.

SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';


-- 11
-- Muestre el apellido de todos los empleados que tengan una “a” y una “e” en el apellido

SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%e%';


-- 12
-- Muestre el apellido, el cargo y el salario de todos los empleados cuyos cargos sean
-- representantes de ventas (SA_REP) o encargados de stock (ST_MAN) y cuyo
-- salario no sea igual a $2.500, $3.500 ni $7.000.

SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN('SA_REP', 'ST_MAN')
AND salary NOT IN(2500, 3500, 7000);


-- 13
-- Muestre el apellido, el salario y la comisión para todos los empleados cuyas
-- comisiones son del 20%.

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct = 0.2;



