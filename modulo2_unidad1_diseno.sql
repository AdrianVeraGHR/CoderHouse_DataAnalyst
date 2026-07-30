CREATE TABLE CLIENTE(
	Id_cliente INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(100),
	Perfil_bio TEXT,
	Fecha_registro DATE,
	Email VARCHAR(50)
)
-- PARA LA TABLA CLIENTE ELEGIMOS LOS TIPOS DE DATOS ACORDE A LA SIGUIENTE JUSTIFICACIÓN
-- Id_cliente utilizamos INT para utilizar un valor entero como identificador único de cada cliente
-- Nombre utilizamos VARCHAR(100) dado que permitira registrar todos los nombres del cliente
-- Perfil_bio utilizamos TEXT para registrar una extensa descripción del cliente
-- Fecha_registro utilizamos DATE para ingresar los valores de fecha con formato de YYYY-MM-DD
-- Email utilizamos VARCHAR(50) ingresar el correo electronico del cliente incluyendo el simbolo @

CREATE TABLE PRODUCTOS(
	Id_producto INT PRIMARY KEY NOT NULL,
	Descripcion VARCHAR(255),
	PRECIO DECIMAL(10,2),
	Stock NUMERIC(5,2),
	Esta_activo BIT
)
-- PARA LA TABLA PRODUCTOS ELEGIMOS LOS TIPOS DE DATOS ACORDE A LA SIGUIENTE JUSTIFICACIÓN
-- Id_producto utilizamos INT para utilizar un valor entero como identificador único de cada cliente
-- Descripcion utilizamos VARCHAR(255) para registrar todas las caracteristicas del producto
-- PRECIO utilizamos DECIMAL(10,2) ya que permitirá registrar hasta 10 valores enteros con un maximo de 2 decimales
-- Stock utilizamos NUMERIC(5,2) resulta un sinonimo del tipo DECIMAL, lo usamos para registrar el stock con 5 valores enteros y 2 decimales
-- Esta_activo utilizamos BIT para asignar el valor 0 como inactivo y el valor 1 como activo, simulando la represaentación binaria de 0 y 1
