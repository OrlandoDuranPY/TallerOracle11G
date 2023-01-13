-- 1. Cree una tabla llamada DEPTOS con la siguiente estructura:

-- | Column Name | ID          | NAME     |
-- | Key Type    | PRIMARY KEY |          |
-- | Data Type   | NUMBER      | VARCHAR2 |
-- | Length      | 7           | 25       |

CREATE TABLE DEPTOS(
id NUMBER(7),
name VARCHAR2(25) NOT NULL,
-- RESTRICCIONES
CONSTRAINT pk_deptos PRIMARY KEY(id)
);


-- 2. Rellene la tabla DEPTOS con todas las filas de la tabla DEPARTMENTS. Incluya solo las columnas que necesite.

INSERT INTO DEPTOS (id, name)
SELECT department_id, department_name
FROM departments;


-- 3. Cree una tabla llamada EMPS con la siguiente estructura:

CREATE TABLE EMPS (
 id NUMBER(7),
 last_name VARCHAR2(25) NOT NULL,
 first_name VARCHAR2(25) NOT NULL,
 dept_id NUMBER(7),
 -- RESTRICCIONES
 CONSTRAINT pk_emps PRIMARY KEY (id),
 CONSTRAINT fk_dept_id FOREIGN KEY (dept_id) REFERENCES DEPTOS(id));
 
 
 -- 4. Modifique la tabla EMPS para permitir una longitud de apellido de 35.
 
 ALTER TABLE EMPS
 MODIFY last_name VARCHAR2(35);
 
 
 -- 5. Agregue 3 filas cualesquiera en la tabla EMPS y consulte los datos.
 
INSERT INTO EMPS
VALUES (1,'Vega', 'Sergio', 10);

INSERT INTO EMPS
VALUES (2, 'Alvarez', 'Julion', 20);

INSERT INTO EMPS
VALUES (3, 'Olivas', 'Alfredo', 30);
 
 
-- 6. Cambie el nombre de la tabla EMPS a EMPLEADOS

RENAME EMPS TO EMPLEADOS;


-- 7. Cree la tabla EMPLOYEES_2 basándose en la estructura de la tabla EMPLOYEES. 
-- Incluya solo las columnas EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY y DEPARTMENT_ID. 
-- Llame a las columnas de la nueva tabla ID, NOMBRE, APELLIDO, SALARIO y CLAVE_DEPT, respectivamente.

CREATE TABLE EMPLOYEES_2
AS SELECT employee_id ID, first_name NOMBRE, last_name APELLIDO, 
        salary SALARIO, department_id CLAVE_DEPT
FROM employees;

-- 8. Borre la columna FIRST_NAME de la tabla EMPLEADOS. Confirme la modificación comprobando la descripción 
-- de la tabla con el comando DESC.

ALTER TABLE EMPLEADOS
DROP COLUMN first_name;

DESC EMPLEADOS;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 