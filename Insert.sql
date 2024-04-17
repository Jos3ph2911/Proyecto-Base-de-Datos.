--INSERCION DE DATOS
-- Insertar datos en la tabla Departamento
INSERT INTO Departamento (ID_Departamento, Nombre) VALUES
(1, 'Electrónica');
INSERT INTO Departamento (ID_Departamento, Nombre) VALUES
(2, 'Ropa');
INSERT INTO Departamento (ID_Departamento, Nombre) VALUES
(3, 'Hogar');
select * from departamento
-- Insertar datos en la tabla Seccion
INSERT INTO Seccion (ID_Seccion, Nombre, ID_Departamento) VALUES
(1, 'Televisores', 1);
INSERT INTO Seccion (ID_Seccion, Nombre, ID_Departamento) VALUES
(2, 'Computadoras', 1);
INSERT INTO Seccion (ID_Seccion, Nombre, ID_Departamento) VALUES
(3, 'Ropa para hombres', 2);
INSERT INTO Seccion (ID_Seccion, Nombre, ID_Departamento) VALUES
(4, 'Ropa para mujeres', 2);
INSERT INTO Seccion (ID_Seccion, Nombre, ID_Departamento) VALUES
(5, 'Electrodomésticos', 3);
select * from seccion
-- Insertar datos en la tabla Promocion
INSERT INTO Promocion (ID_Promocion, Nombre, Descripcion, Fecha_Inicio, Fecha_Final) VALUES
(1, 'Oferta de verano', 'Descuento del 20% en todos los productos', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-08-31', 'YYYY-MM-DD'));
INSERT INTO Promocion (ID_Promocion, Nombre, Descripcion, Fecha_Inicio, Fecha_Final) VALUES
(2, 'Promoción de primavera', 'Compra uno y lleva el segundo con 50% de descuento', TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-04-15', 'YYYY-MM-DD'));
select * from promocion
-- Insertar datos en la tabla Proveedor
INSERT INTO Proveedor (ID_Proveedor, Nombre, Direccion, Telefono) VALUES
(1, 'ElectroMax', 'Calle Principal 123', '555-1234');
INSERT INTO Proveedor (ID_Proveedor, Nombre, Direccion, Telefono) VALUES
(2, 'FashionStyle', 'Avenida Central 456', '555-5678');
INSERT INTO Proveedor (ID_Proveedor, Nombre, Direccion, Telefono) VALUES
(3, 'Casa del Hogar', 'Plaza Mayor 789', '555-9101');
select * from proveedor
-- Insertar datos en la tabla Sucursal
INSERT INTO Sucursal (ID_Sucursal, Nombre, Direccion, Telefono) VALUES
(1, 'Sucursal Central', 'Avenida Principal 100', '555-1000');
INSERT INTO Sucursal (ID_Sucursal, Nombre, Direccion, Telefono) VALUES
(2, 'Sucursal Norte', 'Calle Norte 200', '555-2000');
INSERT INTO Sucursal (ID_Sucursal, Nombre, Direccion, Telefono) VALUES
(3, 'Sucursal Sur', 'Calle Sur 300', '555-3000');
select*from sucursal
-- Insertar datos en la tabla Empleado
INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, Salario, Fecha_Contratacion, ID_Departamento, ID_Sucursal) VALUES
(1, 'Juan', 'Gomez', 'Vendedor', 2500.00, TO_DATE('2020-01-15', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, Salario, Fecha_Contratacion, ID_Departamento, ID_Sucursal) VALUES
(2, 'Maria', 'Lopez', 'Cajero', 2000.00, TO_DATE('2021-05-20', 'YYYY-MM-DD'), 2, 1);
INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, Salario, Fecha_Contratacion, ID_Departamento, ID_Sucursal) VALUES
(3, 'Pedro', 'Martinez', 'Gerente de Tienda', 3500.00, TO_DATE('2019-09-10', 'YYYY-MM-DD'), 1, 2);
INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, Salario, Fecha_Contratacion, ID_Departamento, ID_Sucursal) VALUES
(4, 'Laura', 'Diaz', 'Vendedor', 2300.00, TO_DATE('2022-03-08', 'YYYY-MM-DD'), 2, 2);
INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, Salario, Fecha_Contratacion, ID_Departamento, ID_Sucursal) VALUES
(5, 'Carlos', 'Perez', 'Gerente de Sucursal', 4000.00, TO_DATE('2018-11-25', 'YYYY-MM-DD'), 1, 3);
select * from empleado
-- Insertar datos en la tabla Cliente
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(1, 'Ana', 'Rodriguez', 'ana@ejemplo.com', '555-1111');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(2, 'Luis', 'Sanchez', 'luis@ejemplo.com', '555-2222');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(3, 'Elena', 'Garcia', 'elena@ejemplo.com', '555-3333');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(4, 'Jorge', 'Hernandez', 'jorge@ejemplo.com', '555-4444');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(5, 'Sofia', 'Gutierrez', 'sofia@ejemplo.com', '555-5555');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(6, 'Diego', 'Torres', 'diego@ejemplo.com', '555-6666');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(7, 'Paula', 'Ortega', 'paula@ejemplo.com', '555-7777');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(8, 'Mario', 'Ramirez', 'mario@ejemplo.com', '555-8888');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(9, 'Lorena', 'Dominguez', 'lorena@ejemplo.com', '555-9999');
INSERT INTO Cliente (ID_Cliente, Nombre, Apellido, Email, Telefono) VALUES
(10, 'Raul', 'Fernandez', 'raul@ejemplo.com', '555-0000');
select * from cliente
-- Insertar datos en la tabla Producto
INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, Stock, ID_Seccion, ID_Departamento) VALUES
(1, 'Smart TV 50 pulgadas', 'Televisor LED con resolución Full HD', 499.99, 100, 1, 1);
INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, Stock, ID_Seccion, ID_Departamento) VALUES
(2, 'Laptop HP', 'Portátil con procesador Intel Core i5 y 8GB de RAM', 799.99, 50, 2, 1);
INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, Stock, ID_Seccion, ID_Departamento) VALUES
(3, 'Camisa Polo', 'Camisa de algodón de manga corta para hombres', 29.99, 200, 3, 2);
INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, Stock, ID_Seccion, ID_Departamento) VALUES
(4, 'Vestido Floral', 'Vestido elegante para mujeres con estampado floral', 49.99, 150, 4, 2);
INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, Stock, ID_Seccion, ID_Departamento) VALUES
(5, 'Refrigerador LG', 'Refrigerador con capacidad de 20 pies cúbicos', 899.99, 30, 5, 3);
INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, Stock, ID_Seccion, ID_Departamento) VALUES
(6, 'Lavadora Whirlpool', 'Lavadora de carga frontal con capacidad de 8 kg', 599.99, 40, 5, 3);
select * from producto
-- Insertar datos en la tabla Transaccion
INSERT INTO Transaccion (ID_Transaccion, Fecha, Total, ID_Sucursal) VALUES
(1, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 799.99, 1);
INSERT INTO Transaccion (ID_Transaccion, Fecha, Total, ID_Sucursal) VALUES
(2, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 149.98, 2);
INSERT INTO Transaccion (ID_Transaccion, Fecha, Total, ID_Sucursal) VALUES
(3, TO_DATE('2024-04-03', 'YYYY-MM-DD'), 129.97, 3);
INSERT INTO Transaccion (ID_Transaccion, Fecha, Total, ID_Sucursal) VALUES
(4, TO_DATE('2024-04-04', 'YYYY-MM-DD'), 899.99, 1);
INSERT INTO Transaccion (ID_Transaccion, Fecha, Total, ID_Sucursal) VALUES
(5, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 379.98, 2);
select * from transaccion
-- Insertar datos en la tabla Detalle_Transaccion
INSERT INTO Detalle_Transaccion (ID_Transaccion, ID_Producto, Cantidad, Precio_Unitario) VALUES
(1, 2, 1, 799.99);
INSERT INTO Detalle_Transaccion (ID_Transaccion, ID_Producto, Cantidad, Precio_Unitario) VALUES
(2, 3, 2, 29.99);
INSERT INTO Detalle_Transaccion (ID_Transaccion, ID_Producto, Cantidad, Precio_Unitario) VALUES
(2, 4, 1, 49.99);
INSERT INTO Detalle_Transaccion (ID_Transaccion, ID_Producto, Cantidad, Precio_Unitario) VALUES
(3, 1, 1, 499.99);
INSERT INTO Detalle_Transaccion (ID_Transaccion, ID_Producto, Cantidad, Precio_Unitario) VALUES
(4, 5, 1, 899.99);
INSERT INTO Detalle_Transaccion (ID_Transaccion, ID_Producto, Cantidad, Precio_Unitario) VALUES
(5, 6, 1, 599.99);
select * from Detalle_Transaccion
-- Insertar datos en la tabla Factura
INSERT INTO Factura (ID_Factura, ID_Transaccion, ID_Cliente, ID_Empleado) VALUES
(1, 1, 1, 1);
INSERT INTO Factura (ID_Factura, ID_Transaccion, ID_Cliente, ID_Empleado) VALUES
(2, 2, 2, 2);
INSERT INTO Factura (ID_Factura, ID_Transaccion, ID_Cliente, ID_Empleado) VALUES
(3, 3, 3, 3);
INSERT INTO Factura (ID_Factura, ID_Transaccion, ID_Cliente, ID_Empleado) VALUES
(4, 4, 4, 4);
INSERT INTO Factura (ID_Factura, ID_Transaccion, ID_Cliente, ID_Empleado) VALUES
(5, 5, 5, 5);
select * from factura