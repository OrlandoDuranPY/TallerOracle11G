-- 1
--  La siguiente sentencia SELECT se ejecuta correctamente (Verdadero):

SELECT last_name, job_id, salary AS Sal
FROM employees;


-- 2
-- La siguiente sentencia SELECT se ejecuta correctamente (Falso):

SELECT *
FROM job_grades;


-- 3
--  Hay tres errores de codificación en esta sentencia. ¿Puede identificarlos y corregirlos?
--SELECT employee_id, last_name
--Sal * 12 ANNUAL SALARY
--FROM employees;

SELECT employee_id, last_name, salary*12 AS "ANNUAL SALARY"
FROM employees;


-- 4 
-- Muestre la estructura de la tabla DEPARTMENTS. Posteriormente, seleccione todos los datos de la tabla

DESC departments;

SELECT *
FROM departments;


-- 5
-- Muestre la estructura de la tabla EMPLOYEES. Posteriormente, cree una consulta para
--mostrar el apellido, el código de cargo (job_id), la fecha de contratación y el número de
--empleado para cada empleado. Proporcione un alias para cada columna

SELECT last_name AS "Apellido", job_id AS "Codigo de Cargo",
    hire_date AS "Fecha de Contratación", employee_id AS "Numero de empleado"
FROM employees;


-- 6 
--  Cree una consulta para mostrar códigos de cargo (job_id) únicos (sin repetirse) de la tabla EMPLOYEES
SELECT DISTINCT job_id
FROM employees;


-- 7 
-- Copia la consulta del ejercicio 5. Llame a las cabeceras de columna Apellido, Job, Hire Date, # Employee, respectivamente.
SELECT last_name AS "Apellido", job_id AS "Job",
    hire_date AS "Hire Date", employee_id AS "# Employee"
FROM employees;


-- 8 
-- Muestre el apellido concatenado con el identificador de cargo (job_id), separados por
-- una coma y un espacio y llame a la columna Employee and Title.

SELECT last_name || ', ' || job_id "Employee and Title"
FROM employees;


-- 9 
-- Cree una consulta para mostrar todos los datos de la tabla EMPLOYEES. Separe cada
-- columna con una coma. Llame a la columna THE_OUTPUT.

SELECT employee_id || ', ' || first_name || ', ' || last_name || ', ' || email || ', ' || phone_number ||
', ' || hire_date || ', ' || job_id || ', ' || salary || ', ' || commission_pct || ', ' || manager_id || ', ' ||
department_id AS THE_OUTPUT
FROM employees