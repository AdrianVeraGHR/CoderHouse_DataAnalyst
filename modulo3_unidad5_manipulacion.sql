DROP TABLE IF EXISTS inventario;
-- ELIMINAMOS LA TABLA inventario SI ES QUE EXISTE

CREATE TABLE inventario(
	id_producto	INT	IDENTITY(1,1) PRIMARY KEY NOT NULL, -- ELEGIMOS EL TIPO DE DATO ENTERO PARA UTILIZARLO COMO IDENTIFICADOR AUTOINCREMENTAL
	nombre_producto	VARCHAR(100), -- ELEGIMOS EL TIPO DE DATO VARCHAR PARA REGISTRAR EL NOMBRE DEL PRODUCTO CON VALORES ALFABETICOS
	categoria VARCHAR(50), -- ELEGIMOS EL TIPO DE DATO VARCHAR PARA REGISTRAR LA CATEGORIA DEL PRODUCTO CON VALORES ALFABETICOS
	precio_unitario	DECIMAL(10,2), -- ELEGIMOS EL TIPO DE DATO DECIMAL PARA REGISTRAR EL PRECIO CON UN MAXIMO DE 10 VALORES ENTEROS Y 2 DECIMALES
	stock_actual INT,
	stock_minimo INT,
	fecha_ingreso DATE,
	activo TINYINT
);
-- CREAMOS NUEVAMENTE LA TABLA inventario

INSERT INTO inventario(nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10', 1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);
-- INSERTAMOS REGISTROS EN LA TABLA inventario

UPDATE inventario SET
stock_actual = stock_actual - 3
WHERE nombre_producto = 'Laptop Pro 15'
AND id_producto = 1;
-- ACTUALIZAMOS EL STOCK DEL PRODUCTO QUE CUMPLE CON LA CONDICIÓN nombre_producto = 'Laptop Pro 15' AND id_producto = 1;

UPDATE inventario SET
stock_actual = stock_actual - 12
WHERE nombre_producto = 'Mouse Inalámbrico'
AND id_producto = 2;
-- ACTUALIZAMOS EL STOCK DEL PRODUCTO QUE CUMPLE CON LA CONDICIÓN nombre_producto = 'Mouse Inalámbrico' AND id_producto = 2;

UPDATE inventario SET
stock_actual = stock_actual - 5
WHERE nombre_producto = 'Auriculares BT Pro'
AND id_producto = 6;
-- ACTUALIZAMOS EL STOCK DEL PRODUCTO QUE CUMPLE CON LA CONDICIÓN nombre_producto = 'Auriculares BT Pro' AND id_producto = 6;

UPDATE inventario SET
activo = 0
WHERE nombre_producto = 'Webcam HD 1080p'
AND id_producto = 8;
-- ACTUALIZAMOS EL STOCK DEL PRODUCTO QUE CUMPLE CON LA CONDICIÓN nombre_producto = 'Webcam HD 1080p' AND id_producto = 8;

SELECT * FROM inventario;
-- CONSULTAMOS TODOS LOS REGISTROS Y COLUMNAS DE LA TABLA inventario
