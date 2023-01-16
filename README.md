# Taller Oracle 11g, Universidad Autónoma de Querétaro
Hola, si estás aquí es porque seguramente te inscribiste al taller previamente mencionado. En este repositorio se encuentran las 10 prácticas (contestadas) correspondientes al curso, no solo eso, también vas a encontrar el script sql de todas las prácticas. Como material extra, también te dejo un par de scripts para crear el *Schema HR* de manera rápida, solamente necesitas recordar la contraseña que pusiste al momento de instalar Oracle XE.

## Prácticas Incluidas:

 - [Escritura de sentencias SQL básicas.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%201%20Taller%20de%20Oracle.pdf)
 - [Restricción y ordenación de datos.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%202%20Taller%20de%20Oracle.pdf)
 - [Funciones de una sola fila.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%203%20Taller%20de%20Oracle.pdf)
 - [Uso de funciones de conversiones y expresiones condicionales.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%204%20Taller%20de%20Oracle.docx.pdf)
 - [Agregado de datos utilizando funciones de grupo.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%205%20Taller%20de%20Oracle.pdf)
 - [Visualización de datos de varias tablas.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%206%20Taller%20de%20Oracle.docx.pdf)
 - [Subconsultas.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%207%20Taller%20de%20Oracle.docx.pdf)
 - [Manipulación de datos.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%208%20Taller%20de%20Oracle.pdf)
 - [Creación y gestión de tablas.](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Practicas/Jos%C3%A9%20Orlando%20Dur%C3%A1n%20P%C3%A9rez%20-%20Pr%C3%A1ctica%209%20Taller%20de%20Oracle.pdf)
  
## Schema HR
1. Para crear el Schema HR, lo primero que tenemos que hacer es crear una conexión con un rol *SYSDBA*.
Dentro de SQL Developer presionamos en "Nueva Conexión".

![Nueva Conexion](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/Crear%20conexion.png)

2. Una vez dentro de la ventana "Nueva / Seleccionar Conexión a Base de Datos" es momento de crear la conexión *SYS*, para ello hay que rellenar los siguientes campos con estos datos.
     - Name = SYS
     - Usuario = SYS
     - Rol = SYSDBA
     - Contraseña = "La que pusiste al momento de instalar Oracle XE"
**Te recomiendo marcar la opción de *Guardar Contraseña*.** 
Cuando completes esos 4 campos, presiona el botón *Probar* y si el Estado es Correcto presiona *Guardar* y seguido *Conectar*.

![Usuario SYS](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/SYS.png)

3. Da doble clic en la conexión SYS que ahora aparece en tu panel de conexiones, copia y pega el contenido del script [crear_usuario_hr.sql](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Crear%20Schema%20HR/crear_usuario_hr.sql), una vez que pegues el contenido, presiona F5 para ejecutar todo el script o presiona el botón *Ejecutar Script*, este es el segundo botón que encontrarás en la botonera.

![Botonera](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/Botonera.png)
![Crear Usuario HR](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/Crear%20Usuario%20HR.png)

4. Es hora de crear otra conexión, presionamos de nuevo el botón "Nueva Conexión" y lo llenamos con los siguientes datos.
     - Name = HR
     - Usuario = HR
     - Rol = Valor por defecto
     - Contraseña = HR

![Usuario HR](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/HR.png)

5. Damos doble clic en la conexión HR que ahora aparece en el panel de conexiones, copia y pega el contenido del script [tablas.sql](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Crear%20Schema%20HR/tablas.sql), dentro de este script se encuentran todas las tablas del usuario HR; una vez que peguemos el contenido, volvemos a presionar F5 para ejecutar todo el script o presionamos el botón *Ejecutar Script*.

![Tablas](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/Tablas%20HR.png)

6. Refrescarmos presionando en botón de flecas azules y ya deberían aparecernos las tablas que acabamos de crear.

![Refrescar](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/Refrescar.png)

