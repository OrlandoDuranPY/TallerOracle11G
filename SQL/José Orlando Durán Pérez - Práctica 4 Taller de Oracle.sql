
-- 1
-- Muestre el apellido de cada empleado, así como la fecha de contratación y la fecha de revisión de salario,
-- que es el primer lunes después de seis meses de servicio. Etiquete la columna REVIEW. Formatee las fechas 
-- para que aparezca en un formato similar a “Monday, the Thirtyfirst of July, 2000”.

SELECT last_name, hire_date,
    TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'LUNES'),
    'fmDay, "the" Ddspth "of" Month, YYYY') REVIEW
FROM employees;


-- 2
-- Muestre el apellido, la fecha de contratación y el día de la semana en el que comenzó a trabajar el empleado. 
-- Etiquete a la última columna DAY. Ordene los resultados por la última columna.

SELECT last_name, hire_date, TO_CHAR(hire_date, 'DAY') DAY
FROM employees 
ORDER BY TO_CHAR(hire_date, 'd') ASC;


-- 3
-- Cree una consulta que muestre el apellido y las comisiones de los empleados. Si un empleado no gana comisión, 
-- ponga “Sin Comisión”. Etiquete a la última columna COMM.

SELECT last_name, NVL(TO_CHAR(commission_pct), 'Sin Comisión') COMM
FROM employees;


-- 4 
-- Cree una consulta que muestre el apellido de los empleados y que indique las cantidades de sus salarios con 
-- asteriscos. Cada asterisco significa mil dólares. Ordene los datos por salario en orden descendente. 
-- Etiquete la columna EMPLOYEES_AND_THEIR_SALARIES.

SELECT last_name, salary, RPAD('*',TRUNC(salary/1000), '*') EMPLOYEES_AND_THEIR_SALARIES
FROM employees
ORDER BY EMPLOYEES_AND_THEIR_SALARIES DESC;


-- 5 
-- Usando la función DECODE, escribir una consulta que presente los grados de todos los empleados basado en los 
-- valores de la columna JOB_ID, usando los siguientes datos:
-- ___________________
-- | JOB_ID  | GRADO |
-- -------------------
-- | AD_PRES |   A   |
-- | ST_MAN  |   B   |
-- | IT_PROG |   C   |
-- | SA_REP  |   D   |
-- |ST_CLERK |   E   |
-- | Ninguno |   F   |
-- |anterior |       |
-- -------------------

SELECT job_id,
    DECODE (job_id,
    'AD_PRES','A',
    'ST_MAN','B',
    'IT_PROG','C',
    'SA_REP','D',
    'ST_CLERK','E',
    'F') AS GRADO
FROM employees;


-- 6 
-- Resuelva el ejercicio anteriro utilizando la sintaxis de la funcion CASE

SELECT job_id,
    CASE job_id 
        WHEN 'AD_PRES' THEN 'A'
        WHEN 'ST_MAN' THEN 'B'
        WHEN'IT_PROG' THEN 'C'
        WHEN'SA_REP' THEN 'D'
        WHEN'ST_CLERK' THEN 'E'
        ELSE 'F'
    END AS "GRADO"
FROM employees;

