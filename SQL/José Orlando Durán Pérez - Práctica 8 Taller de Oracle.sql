-- 1
-- Ejecute la siguiente sentencia para crear la tabla MY_EMPLOYEE que se utilizará
-- para la práctica.

CREATE TABLE MY_EMPLOYEE(
ID NUMBER PRIMARY KEY,
LAST_NAME VARCHAR2(30) NOT NULL,
FIRST_NAME VARCHAR2(30) NOT NULL,
USERID VARCHAR2(30) NOT NULL,
SALARY NUMBER NOT NULL
);


-- 2
-- Describa la estructura de la tabla MY_EMPLOYEE, mediante el comando DESC,
-- para identificar los nombres de columna.

DESC my_employee;


-- 3
-- Agregue solo la primera fila de datos a la tabla MY_EMPLOYEE desde los
-- siguientes datos de ejemplo. No escriba las columnas en la cláusula INSERT.

INSERT INTO my_employee
VALUES (1, 'Patel', 'Ralph', 'Rpatel', 895);


-- 4
-- Agregue a la tabla MY_EMPLOYEE la segunda fila de los datos de ejemplo de la
-- lista anterior. Esta vez, escriba las columnas explícitamente en la cláusula
-- INSERT.

INSERT INTO my_employee (id, last_name, first_name, userid, salary)
VALUES (2, 'Dancs', 'Betty', 'Bdancs', 860);


-- 5
-- Visualice los datos de la tabla MY_EMPLOYEE.

SELECT * FROM my_employee;


-- 6
-- Escriba una sentencia INSERT para cargar filas en la tabla MY_EMPLOYEE
-- solicitando datos al usuario con el comando &variable.

INSERT INTO my_employee
VALUES (&id, '&last_name', '&first_name', '&user_id', &salary);


-- 7 
--Rellene la tabla con la tercera y cuarta fila de los datos de ejemplo ejecutando la
--sentencia INSERT creada en el ejercicio 6.

INSERT INTO my_employee
VALUES (&id, '&last_name', '&first_name', '&user_id', &salary);


-- 8
-- Visualice los datos de la tabla MY_EMPLOYEE.
SELECT * FROM my_employee;


-- 9 
-- Haga que las adiciones de datos sean permanentes.

COMMIT;


-- 10
-- Cambie el apellido del empleado 3 por Drexter.

UPDATE my_employee 
SET last_name = 'Drexter'
WHERE id = 3;


-- 11
-- Cambie el salario a 1000 para todos los empleados con un salario inferior a 900.

UPDATE my_employee
SET salary = 1000
WHERE salary < 900;


-- 12
-- Visualice los datos de la tabla MY_EMPLOYEE.
SELECT * FROM my_employee;


-- 13
-- Elimine a Betty Dancs de la tabla MY_EMPLOYEE.
DELETE 
FROM my_employee
WHERE id = 2;


-- 14
-- Visualice los datos de la tabla MY_EMPLOYEE.
SELECT * FROM my_employee;


-- 15
-- Haga que los cambios en los datos sean permanentes.
COMMIT;


-- 16
-- Rellene la tabla con la quinta fila de los datos de ejemplo modificando los valores
-- del comando que creó en el ejercicio 6.

INSERT INTO my_employee
VALUES (&id, '&last_name', '&first_name', '&user_id', &salary);


-- 17
-- Visualice los datos de la tabla MY_EMPLOYEE.
SELECT * FROM my_employee;


-- 18
-- Vacíe toda la tabla mediante el comando DELETE.
DELETE
FROM my_employee;


-- 19 
-- Visualice todos los datos de la tabla para verificar que está vacía.
SELECT * FROM my_employee;


-- 20
-- Deshaga los cambios en los datos.
ROLLBACK;


-- 21
-- Realice una captura de pantalla de los datos de la tabla MY_EMPLOYEE.










