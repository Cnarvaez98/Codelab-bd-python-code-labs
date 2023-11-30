-- 01_create_table.sql --
-- Crear la base de datos labs
CREATE DATABASE IF NOT EXISTS labs;

-- Usar la base de datos labs
USE labs;

-- Crear la tabla productos
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    cantidad INT NOT NULL
);
--02_insert_data.sql--
-- Insertar datos en la tabla productos
INSERT INTO productos (nombre, categoria, precio, cantidad) VALUES
    ('Camiseta', 'Ropa', 19.99, 50),
    ('Zapatos', 'Calzado', 59.99, 20),
    ('Pantalon', 'Ropa', 29.99, 30),
    ('Gorra', 'Accesorios', 9.99, 100),
    ('Bufanda', 'Accesorios', 14.99, 40),
    ('Vaso', 'Hogar', 4.99, 80),
    ('Libreta', 'Papeleria', 2.99, 120),
    ('Reloj', 'Accesorios', 39.99, 15),
    ('Juguete', 'Infantil', 12.99, 70),
    ('Bolso', 'Accesorios', 24.99, 25);
--03_select_queries.sql--
   -- Consulta para seleccionar productos cuya categoría sea "Accesorios" y precio mayor o igual a $20
SELECT * FROM productos WHERE categoria = 'Accesorios' AND precio >= 20;

-- Consulta para seleccionar productos cuya cantidad sea menor o igual a 50
SELECT * FROM productos WHERE cantidad <= 50;
--04_update_quantity.sql--
-- Actualización para incrementar en 10 unidades la cantidad de productos cuya categoría sea "Ropa"
UPDATE productos SET cantidad = cantidad + 10 WHERE categoria = 'Ropa';
--05_delete_by_price.sql--
-- Eliminación de productos cuyo precio sea menor de $10
DELETE FROM productos WHERE precio < 10;