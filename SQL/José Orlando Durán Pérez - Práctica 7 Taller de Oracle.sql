-- 1 
--Escriba una consulta que muestre el apellido y la fecha de contratación de
--cualquier empleado del mismo departamento que el empleado de apellido Zlotkey.
--Excluya a Zlotkey del resultado principal.

SELECT last_name, hire_date 
FROM employees 
WHERE department_id = 
    (SELECT department_id 
    FROM employees WHERE last_name = 'Zlotkey') 
    AND last_name <> 'Zlotkey';


-- 2
--Cree una consulta para mostrar los números de empleados y los apellidos de
--todos los empleados que ganen más que el salario promedio. Ordene los
--resultados por salario en orden descendente.

SELECT employee_id, last_name
FROM employees
WHERE salary >(SELECT AVG(salary) FROM employees)
ORDER BY salary DESC;


-- 3
--Escriba una consulta que muestre los números de empleado y los apellidos de
--todos los empleados que trabajen en el departamento de cualquier empleado cuyo
--apellido contenga una ‘a’ en cualquier lugar.

SELECT employee_id, last_name 
FROM employees
WHERE department_id IN 
    (SELECT department_id 
    FROM employees 
    WHERE last_name LIKE '%a%');


-- 4
--Muestre el apellido, el número de departamento y el identificador de cargo (job_id)
--de todos los empleados cuyos identificadores de ubicación de departamento
--(location_id) sean 1700.

SELECT last_name,department_id,job_id
FROM employees
WHERE department_id IN 
    (SELECT department_id 
    FROM departments 
    WHERE location_id = 1700);


-- 5 
--Muestre el apellido y el salario de todos los empleados cuyo manager sea el
--empleado de apellido King.

SELECT last_name, salary
FROM employees
WHERE manager_id IN
    (SELECT employee_id 
    FROM employees 
    WHERE last_name = 'King');


-- 6
--Muestre el número de departamento, el apellido y el identificador de cargo de
--todos los empleados del departamento llamado Executive.

SELECT department_id, last_name, job_id
FROM employees
WHERE department_id = 
    (SELECT department_id 
    FROM departments 
    WHERE department_name LIKE 'Executive');


-- 7 
--Modifique la consulta del ejercicio 3 para mostrar los números de empleado, los
--apellidos y los salarios de todos los empleados que ganan más que el salario
--promedio y que trabajen en un departamento con un empleado que tenga una ‘u’
--en cualquier lugar de su apellido.

SELECT employee_id, last_name , salary
FROM employees
WHERE department_id IN 
    (SELECT department_id 
    FROM departments 
    WHERE department_name LIKE '%u%');
