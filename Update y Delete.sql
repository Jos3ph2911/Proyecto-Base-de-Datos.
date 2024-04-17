--Script de eliminacion y actualizacion de datos
--UPDATE
UPDATE Empleado
SET Salario = 2700.00
WHERE ID_Empleado = 1;

UPDATE Proveedor
SET Direccion = 'Calle Nueva 789'
WHERE ID_Proveedor = 2;

UPDATE Empleado
SET Fecha_Contratacion = TO_DATE('2019-09-01', 'YYYY-MM-DD')
WHERE ID_Empleado = 3;

UPDATE Producto
SET Precio = 59.99
WHERE ID_Producto = 4;

UPDATE Sucursal
SET Telefono = '555-3210'
WHERE ID_Sucursal = 3;

--DELETE
--OJO NOTA:Los Delete no estan ejecutados
DELETE FROM Cliente
WHERE ID_Cliente = 7;

DELETE FROM Promocion
WHERE ID_Promocion = 2;

DELETE FROM Producto
WHERE Precio < 50.00;

DELETE FROM Transaccion
WHERE Fecha > TO_DATE('2024-04-01', 'YYYY-MM-DD');

DELETE FROM Detalle_Transaccion
WHERE ID_Producto > 3;