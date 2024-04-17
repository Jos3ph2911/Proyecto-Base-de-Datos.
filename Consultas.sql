--Consultas

Consulta 1: Cantidad de productos por sección:
SELECT s.Nombre AS Seccion, COUNT(p.ID_Producto) AS Cantidad_Productos
FROM Seccion s
JOIN Producto p ON s.ID_Seccion = p.ID_Seccion
GROUP BY s.Nombre;

Consulta 2: Total de ventas por cliente:
SELECT c.Nombre, c.Apellido, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Venta
FROM Cliente c
JOIN Factura f ON c.ID_Cliente = f.ID_Cliente
JOIN Transaccion t ON f.ID_Transaccion = t.ID_Transaccion
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
GROUP BY c.Nombre, c.Apellido;



Consulta 3: Total de ventas por mes y año:
SELECT TO_CHAR(t.Fecha, 'MM-YYYY') AS Mes, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Ventas
FROM Transaccion t
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
GROUP BY TO_CHAR(t.Fecha, 'MM-YYYY');

Consulta 4: Cantidad de empleados por departamento y sucursal:
SELECT d.Nombre AS Departamento, s.Nombre AS Sucursal, COUNT(e.ID_Empleado) AS Cantidad_Empleados
FROM Departamento d
JOIN Empleado e ON d.ID_Departamento = e.ID_Departamento
JOIN Sucursal s ON e.ID_Sucursal = s.ID_Sucursal
GROUP BY d.Nombre, s.Nombre;

Consulta 5: Total de ventas por producto y cliente:
SELECT p.Nombre AS Producto, c.Nombre, c.Apellido, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Ventas
FROM Producto p
JOIN Detalle_Transaccion dt ON p.ID_Producto = dt.ID_Producto
JOIN Transaccion t ON dt.ID_Transaccion = t.ID_Transaccion
JOIN Factura f ON t.ID_Transaccion = f.ID_Transaccion
JOIN Cliente c ON f.ID_Cliente = c.ID_Cliente
GROUP BY p.Nombre, c.Nombre, c.Apellido;

Consulta 6: Cantidad de productos en stock por sección y departamento:
SELECT s.Nombre AS Seccion, d.Nombre AS Departamento, SUM(p.Stock) AS Stock_Total
FROM Seccion s
JOIN Producto p ON s.ID_Seccion = p.ID_Seccion
JOIN Departamento d ON p.ID_Departamento = d.ID_Departamento
GROUP BY s.Nombre, d.Nombre;

Consulta 7: Total de ventas por producto y mes:
SELECT p.Nombre AS Producto, TO_CHAR(t.Fecha, 'MM-YYYY') AS Mes, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Ventas
FROM Producto p
JOIN Detalle_Transaccion dt ON p.ID_Producto = dt.ID_Producto
JOIN Transaccion t ON dt.ID_Transaccion = t.ID_Transaccion
GROUP BY p.Nombre, TO_CHAR(t.Fecha, 'MM-YYYY');

Consulta 8: Total de ventas mensuales por sucursal:
SELECT TO_CHAR(t.Fecha, 'MM-YYYY') AS Mes, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Venta
FROM Transaccion t
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
GROUP BY TO_CHAR(t.Fecha, 'MM-YYYY');


Consulta 9: Total de ventas por cliente y sucursal:
SELECT c.Nombre, c.Apellido, s.Nombre AS Sucursal, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Venta
FROM Cliente c
JOIN Factura f ON c.ID_Cliente = f.ID_Cliente
JOIN Transaccion t ON f.ID_Transaccion = t.ID_Transaccion
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
JOIN Sucursal s ON t.ID_Sucursal = s.ID_Sucursal
GROUP BY c.Nombre, c.Apellido, s.Nombre;


Consulta 10: Cantidad de productos vendidos por cliente y sección:
SELECT c.Nombre, c.Apellido, s.Nombre AS Seccion, COUNT(dt.ID_Producto) AS Cantidad_Productos
FROM Cliente c
JOIN Factura f ON c.ID_Cliente = f.ID_Cliente
JOIN Transaccion t ON f.ID_Transaccion = t.ID_Transaccion
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
JOIN Producto p ON dt.ID_Producto = p.ID_Producto
JOIN Seccion s ON p.ID_Seccion = s.ID_Seccion
GROUP BY c.Nombre, c.Apellido, s.Nombre;

Consulta 11: Total de ventas mensuales por departamento:
SELECT TO_CHAR(t.Fecha, 'MM-YYYY') AS Mes, d.Nombre AS Departamento, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Venta
FROM Transaccion t
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
JOIN Producto p ON dt.ID_Producto = p.ID_Producto
JOIN Seccion s ON p.ID_Seccion = s.ID_Seccion
JOIN Departamento d ON s.ID_Departamento = d.ID_Departamento
GROUP BY TO_CHAR(t.Fecha, 'MM-YYYY'), d.Nombre;


Consulta 12: Cantidad de productos vendidos por sucursal:
SELECT s.Nombre AS Sucursal, COUNT(*) AS Cantidad_Productos_Vendidos
FROM Factura f
JOIN Transaccion t ON f.ID_Transaccion = t.ID_Transaccion
JOIN Sucursal s ON t.ID_Sucursal = s.ID_Sucursal
GROUP BY s.Nombre;

Consulta 13: Total de ventas por producto y año:
SELECT p.Nombre AS Producto, TO_CHAR(t.Fecha, 'YYYY') AS Anio, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Ventas
FROM Producto p
JOIN Detalle_Transaccion dt ON p.ID_Producto = dt.ID_Producto
JOIN Transaccion t ON dt.ID_Transaccion = t.ID_Transaccion
GROUP BY p.Nombre, TO_CHAR(t.Fecha, 'YYYY');

Consulta 14: Cantidad de productos vendidos por cliente y departamento:
SELECT c.Nombre, c.Apellido, d.Nombre AS Departamento, COUNT(dt.ID_Producto) AS Cantidad_Productos
FROM Cliente c
JOIN Factura f ON c.ID_Cliente = f.ID_Cliente
JOIN Transaccion t ON f.ID_Transaccion = t.ID_Transaccion
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
JOIN Producto p ON dt.ID_Producto = p.ID_Producto
JOIN Departamento d ON p.ID_Departamento = d.ID_Departamento
GROUP BY c.Nombre, c.Apellido, d.Nombre;

Consulta 15: Total de ventas por departamento y sucursal:
SELECT d.Nombre AS Departamento, s.Nombre AS Sucursal, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Venta
FROM Transaccion t
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
JOIN Producto p ON dt.ID_Producto = p.ID_Producto
JOIN Seccion sec ON p.ID_Seccion = sec.ID_Seccion
JOIN Departamento d ON sec.ID_Departamento = d.ID_Departamento
JOIN Sucursal s ON t.ID_Sucursal = s.ID_Sucursal
GROUP BY d.Nombre, s.Nombre;


Consulta 16: Cantidad de productos vendidos por cliente y departamento:
SELECT c.Nombre, c.Apellido, d.Nombre AS Departamento, COUNT(dt.ID_Producto) AS Cantidad_Productos
FROM Cliente c
JOIN Factura f ON c.ID_Cliente = f.ID_Cliente
JOIN Transaccion t ON f.ID_Transaccion = t.ID_Transaccion
JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
JOIN Producto p ON dt.ID_Producto = p.ID_Producto
JOIN Departamento d ON p.ID_Departamento = d.ID_Departamento
GROUP BY c.Nombre, c.Apellido, d.Nombre;

Consulta 17: Total de ventas por producto y mes:
SELECT p.Nombre AS Producto, TO_CHAR(t.Fecha, 'MM-YYYY') AS Mes, SUM(dt.Cantidad * dt.Precio_Unitario) AS Total_Ventas
FROM Producto p
JOIN Detalle_Transaccion dt ON p.ID_Producto = dt.ID_Producto
JOIN Transaccion t ON dt.ID_Transaccion = t.ID_Transaccion
GROUP BY p.Nombre, TO_CHAR(t.Fecha, 'MM-YYYY');

Consulta 18: Total de ventas por mes y año:
SELECT TO_CHAR(t.Fecha, 'MM-YYYY') AS Mes_Anio, COALESCE(SUM(dt.Cantidad * dt.Precio_Unitario), 0) AS Total_Ventas
FROM Transaccion t
LEFT JOIN Detalle_Transaccion dt ON t.ID_Transaccion = dt.ID_Transaccion
GROUP BY TO_CHAR(t.Fecha, 'MM-YYYY');