# Taller Oracle 11g, Universidad Autónoma de Querétaro
Hola, si estás aquí es porque seguramente te inscribiste al taller previamente mencionado. En este repositorio se encuentran las 10 prácticas (contestadas) correspondientes al curso, no solo eso, también vas a encontrar el script sql de todas las prácticas. Como material extra, también te dejo un par de scripts para crear el *Schema HR* de manera rápida, solamente necesitas recordar la contraseña que pusiste al momento de instalar Oracle XE.

## Prácticas Incluidas:

 - Escritura de sentencias SQL básicas.
 - Restricción y ordenación de datos.
 - Funciones de una sola fila.
 - Uso de funciones de conversiones y expresiones condicionales.
 - Agregado de datos utilizando funciones de grupo.
 - Visualización de datos de varias tablas.
 - Subconsultas.
 - Manipulación de datos.
 - Creación y gestión de tablas.
 - 
  
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

3. Da doble clic en la conexión SYS que ahora aparece en tu panel de conexiones, copia y pega el contenido del script [crear_usuario_hr.sql](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/Crear%20Schema%20HR/crear_usuario_hr.sql), una vez que pegues el contenido, presiona F5 para ejecutar todo el script o presiona el botón *Ejecutar Script*, este es el segundo botón que encontrarás en la botonera.
![Botonera](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/Botonera.png)
![Crear Usuario HR](https://github.com/OrlandoDuranPY/TallerOracle11G/blob/main/img/Crear%20Usuario%20HR.png)
