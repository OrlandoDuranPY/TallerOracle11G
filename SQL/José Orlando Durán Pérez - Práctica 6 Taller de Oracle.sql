-- 1 
-- Escriba una consulta para visualizar el apellido del empleado, y el n�mero y nombre del departamento en el que trabaja.

SELECT e.last_name, d.department_id, d.department_name
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id);

-- OR

SELECT last_name, department_id, department_name
FROM employees 
JOIN departments USING (department_id);


-- 2
-- Cree un listado de todos los cargos (job_id) sin repetirse que haya en el departamento 80. 
-- Incluya la ubicaci�n del departamento (location_id) en el resultado.

SELECT DISTINCT(e.job_id), d.location_id
FROM employees e 
JOIN departments d 
ON (e.department_id = d.department_id AND e.department_id = 80);

-- OR

SELECT DISTINCT(job_id), location_id
FROM employees
JOIN departments USING(department_id)
WHERE department_id = 80;


-- 3
-- Escriba una consulta para mostrar el apellido del empleado, el nombre del departamento, 
-- el identificador de ubicaci�n y la ciudad de todos los empleados que perciben comisi�n.

SELECT e.last_name, d.department_id, l.location_id, l.city
FROM employees e 
JOIN departments d 
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
WHERE commission_pct IS NOT NULL;

-- OR

SELECT last_name, department_id, location_id, city
FROM employees
JOIN departments USING(department_id)
JOIN locations USING (location_id)
WHERE commission_pct IS NOT NULL;


-- 4
-- Visualice el apellido del empleado y el nombre de departamento para todos los empleados que tengan una �a� 
-- (min�scula) en el apellido.

SELECT e.last_name, d.department_id
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id)
WHERE e.last_name LIKE '%a%';

-- OR

SELECT last_name, department_id
FROM employees
JOIN departments USING(department_id)
WHERE last_name LIKE '%a%';


-- 5 
-- Escriba una consulta para visualizar el apellido, el cargo, el n�mero de departamento y el nombre de departamento 
-- para todos los empleados que trabajen en la ciudad de Toronto.
-- , d.department_id, d.department_name
SELECT e.last_name, j.job_title, d.department_id, d.department_name
FROM employees e
JOIN jobs j
ON (e.job_id = j.job_id)
JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l 
ON (d.location_id = l.location_id)
WHERE l.city = 'Toronto';

-- OR

SELECT last_name, job_title, department_id, department_name
FROM employees
JOIN jobs USING(job_id)
JOIN departments USING (department_id)
JOIN locations USING (location_id)
WHERE city = 'Toronto';

-- 6 
-- Visualice el apellido y el n�mero del empleado junto con el apellido y el nombre de su gerente (manager) utilizando un self-join. 
-- Etiquete las columnas como Employee, Emp #, Manager y Mgr #, respectivamente.  

SELECT e.last_name "Employee", e.employee_id "Emp #", m.last_name "Manager", m.employee_id "Mgr #"
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;

-- 7 
-- Modifique la consulta anterior para visualizar a todos los empleados incluyendo a King, que no tiene gerente. 
-- Ordene los resultados por n�mero de empleado.

SELECT e.last_name "Employee", e.employee_id "Emp #", m.last_name "Manager", m.employee_id "Mgr #"
FROM employees e
LEFT OUTER JOIN employees m
ON e.manager_id = m.employee_id;

-- 8
-- Visualice la estructura de la tabla JOBS mediante el comando DESC. Cree una consulta en la que pueda visualizar el nombre del empleado, 
-- nombre de departamento, el salario y el t�tulo del cargo (job_title) de todos los empleados.

SELECT e.first_name || ' ' || e.last_name "NAME", d.department_id, e.salary, j.job_title
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id)
JOIN jobs j
ON (e.job_id = j.job_id);

-- 9
-- Visualice los nombres y las fechas de contrataci�n de todos los empleados contratados antes que sus gerentes, 
-- junto con los nombres y las fechas de contrataci�n de dichos gerentes. Etiquete las columnas como Employees,
-- Emp Hired, Manager y Mgr Hired, respectivamente.

SELECT e.first_name || ' ' || e.last_name "Employees", e.hire_date "Emp Hired", m.first_name || ' ' || m.last_name "Manager", m.hire_date "Mgr Hired"
FROM employees e
JOIN employees m
ON (m.employee_id = e.manager_id)
WHERE e.hire_date < m.hire_date;

