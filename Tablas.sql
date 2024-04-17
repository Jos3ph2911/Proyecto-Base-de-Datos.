-- Creación de la tabla Producto
CREATE TABLE Producto (
    ID_Producto NUMBER CONSTRAINT PK_Producto PRIMARY KEY,
    Nombre VARCHAR2(100),
    Descripcion VARCHAR2(255),
    Precio NUMBER(10, 2),
    Stock NUMBER,
    ID_Seccion NUMBER, -- Relación con la tabla Seccion
    ID_Departamento NUMBER -- Relación con la tabla Departamento
);

ALTER TABLE Producto
ADD CONSTRAINT FK_Producto_Seccion FOREIGN KEY (ID_Seccion) REFERENCES Seccion(ID_Seccion);

ALTER TABLE Producto
ADD CONSTRAINT FK_Producto_Departamento FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento);

ALTER TABLE Producto
ADD CONSTRAINT UK_Producto UNIQUE (Nombre);


-- Creación de la tabla Proveedor
CREATE TABLE Proveedor (
    ID_Proveedor NUMBER CONSTRAINT PK_Proveedor PRIMARY KEY,
    Nombre VARCHAR2(100),
    Direccion VARCHAR2(255),
    Telefono VARCHAR2(20)
);

ALTER TABLE Proveedor
ADD CONSTRAINT UK_Proveedor UNIQUE (Nombre);

-- Creación de la tabla Sucursal
CREATE TABLE Sucursal (
    ID_Sucursal NUMBER CONSTRAINT PK_Sucursal PRIMARY KEY,
    Nombre VARCHAR2(100),
    Direccion VARCHAR2(255),
    Telefono VARCHAR2(20)
);

-- Creación de la tabla Empleado
CREATE TABLE Empleado (
    ID_Empleado NUMBER CONSTRAINT PK_Empleado PRIMARY KEY,
    Nombre VARCHAR2(100),
    Apellido VARCHAR2(100),
    Puesto VARCHAR2(100),
    Salario NUMBER(10, 2),
    Fecha_Contratacion DATE,
    ID_Departamento NUMBER, -- Relación con la tabla Departamento
    ID_Sucursal NUMBER-- Relación con la tabla Sucursal
);

ALTER TABLE Empleado
ADD CONSTRAINT CK_Empleado_Salario CHECK (Salario >= 0);

ALTER TABLE Empleado
ADD CONSTRAINT FK_Empleado_Departamento FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento);

ALTER TABLE Empleado
ADD CONSTRAINT FK_Empleado_Sucursal FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal);

-- Creación de la tabla Cliente
CREATE TABLE Cliente (
    ID_Cliente NUMBER CONSTRAINT PK_Cliente PRIMARY KEY,
    Nombre VARCHAR2(100),
    Apellido VARCHAR2(100),
    Email VARCHAR2(100),
    Telefono VARCHAR2(20)
);

ALTER TABLE Cliente
ADD CONSTRAINT UK_Cliente UNIQUE (Email);

-- Creación de la tabla Transaccion
CREATE TABLE Transaccion (
    ID_Transaccion NUMBER CONSTRAINT PK_Transaccion PRIMARY KEY,
    Fecha DATE,
    Total NUMBER(10, 2),
    ID_Sucursal NUMBER -- Relación con la tabla Sucursal
);

ALTER TABLE Transaccion
ADD CONSTRAINT FK_Transaccion_Sucursal FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal);

-- Creación de la tabla Detalle_Transaccion
CREATE TABLE Detalle_Transaccion (
    ID_Transaccion NUMBER,
    ID_Producto NUMBER,
    Cantidad NUMBER,
    Precio_Unitario NUMBER(10, 2)
);

ALTER TABLE Detalle_Transaccion
ADD CONSTRAINT FK_Detalle_Trans_Transaccion FOREIGN KEY (ID_Transaccion) REFERENCES Transaccion(ID_Transaccion);

ALTER TABLE Detalle_Transaccion
ADD CONSTRAINT FK_Detalle_Trans_Producto FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto);

-- Creación de la tabla Factura
CREATE TABLE Factura (
    ID_Factura NUMBER CONSTRAINT PK_Factura PRIMARY KEY,
    ID_Transaccion NUMBER,
    ID_Cliente NUMBER,
    ID_Empleado NUMBER -- Relación con la tabla Empleado
);

ALTER TABLE Factura
ADD CONSTRAINT FK_Factura_Transaccion FOREIGN KEY (ID_Transaccion) REFERENCES Transaccion(ID_Transaccion);

ALTER TABLE Factura
ADD CONSTRAINT FK_Factura_Cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente);

ALTER TABLE Factura
ADD CONSTRAINT FK_Factura_Empleado FOREIGN KEY (ID_Empleado) REFERENCES Empleado(ID_Empleado);

-- Creación de la tabla Departamento
CREATE TABLE Departamento (
    ID_Departamento NUMBER CONSTRAINT PK_Departamento PRIMARY KEY,
    Nombre VARCHAR2(100)
);


-- Creación de la tabla Seccion
CREATE TABLE Seccion (
    ID_Seccion NUMBER CONSTRAINT PK_Seccion PRIMARY KEY,
    Nombre VARCHAR2(100),
    ID_Departamento NUMBER
);

ALTER TABLE Seccion
ADD CONSTRAINT FK_Seccion_Departamento FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento);

-- Creación de la tabla Promocion
CREATE TABLE Promocion (
    ID_Promocion NUMBER CONSTRAINT PK_Promocion PRIMARY KEY,
    Nombre VARCHAR2(100),
    Descripcion VARCHAR2(255),
    Fecha_Inicio DATE,
    Fecha_Final DATE
);
