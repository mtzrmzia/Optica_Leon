CREATE TABLE Tipo_Lentes
(
	TipoL_id INT IDENTITY PRIMARY KEY,
	TipoL_nombre VARCHAR(50) NOT NULL,
	TipoL_descripcion VARCHAR(250) 
)

CREATE TABLE Marca_Lentes
(
	Marca_id INT IDENTITY PRIMARY KEY,
	Marca_nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Tipo_Articulo
(
	TipoA_id INT IDENTITY PRIMARY KEY,
	TipoA_nombre VARCHAR(50) NOT NULL,
	TipoA_descripcion VARCHAR(250)
)

CREATE TABLE Ubicacion
(
	Ub_id INT IDENTITY PRIMARY KEY,
	Ub_nombre VARCHAR(50) NOT NULL,
	Ub_descripcion VARCHAR(250)
)

CREATE TABLE Cliente
(
	Cl_id INT IDENTITY PRIMARY KEY,
	Cl_nombre VARCHAR(60),
	Cl_telefono VARCHAR(13),
	Cl_empresa VARCHAR(250),
	Cl_SNTE BIT
)


CREATE TABLE Empleado
(
	Em_id INT IDENTITY PRIMARY KEY,
	Em_nombre VARCHAR(60)
)

CREATE TABLE Rol_Usuario
(
	RolU_id INT IDENTITY PRIMARY KEY,
	RolU_nombre VARCHAR(50)
)

/* Create Tables with FK */

CREATE TABLE Usuario
(
	Us_id INT IDENTITY PRIMARY KEY,
	Us_usuario VARCHAR(12),
	Us_clave VARCHAR(8),
	RolU_id INT REFERENCES Rol_Usuario(RolU_id),
	estatus BIT
)

CREATE TABLE Lentes
(
	Le_codigo VARCHAR(10) PRIMARY KEY,
	Le_nombre VARCHAR(50) NOT NULL,
	Marca_id INT REFERENCES Marca_Lentes(Marca_id),
	TipoL_id INT REFERENCES Tipo_Lentes(TipoL_id),
	Le_descripcion VARCHAR(250)NULL,
	Le_color VARCHAR (25)NULL,
	Le_imagen IMAGE,
	Le_precio DECIMAL(10,2) NOT NULL,
)

CREATE TABLE Articulo
(
	Ar_codigo VARCHAR(13) PRIMARY KEY,
	Ar_nombre VARCHAR(50) NOT NULL,
    Ar_descripcion VARCHAR(250),
	Ar_imagen IMAGE,
	Ar_precio DECIMAL(10,2),
	TipoA_id INT REFERENCES Tipo_Articulo(TipoA_id)
)
								--Entrada Lentes--
CREATE TABLE Entrada_Lentes
(
	EnLe_id INT IDENTITY PRIMARY KEY,
	EnLe_Fecha DATE NOT NULL,
)

CREATE TABLE Detalle_Entrada_Lentes
(
	DetEn_id INT IDENTITY PRIMARY KEY,
	EnLe_id INT NOT NULL,
	Le_codigo VARCHAR(10) REFERENCES Lentes(Le_codigo),
	UbDestino_id INT REFERENCES Ubicacion(Ub_id),
	Lentes_cantidad INT NOT NULL,
	Precio_lentes_Entrada DECIMAL (10,2) NOT NULL
)
								--Salida Lentes--
CREATE TABLE Salida_Lentes
(
	SaLe_id INT IDENTITY PRIMARY KEY,
	SaLe_Fecha DATE NOT NULL,
	Cl_id INT REFERENCES Cliente (Cl_id),
	Em_id INT REFERENCES Empleado(Em_id)
)

CREATE TABLE Detalle_Salida_Lentes
(
	DetSa_id INT IDENTITY PRIMARY KEY,
	SaLe_id INT NOT NULL,
	Le_codigo VARCHAR(10) REFERENCES Lentes(Le_codigo),
	UbOrigen_id INT REFERENCES Ubicacion(Ub_id),
	Lentes_cantidad INT NOT NULL,
	Precio_lentes_Salida DECIMAL (10,2) NOT NULL
)
								--Desplazamiento Lentes--
CREATE TABLE Desplazamiento_Lentes
(
	DesLe_id INT IDENTITY PRIMARY KEY,
	DesLe_Fecha DATE NOT NULL,
)

CREATE TABLE Detalle_Desplazamiento_Lentes
(
	DetDes_id INT IDENTITY PRIMARY KEY,
	DesLe_id INT NOT NULL,
	Le_codigo VARCHAR(10) REFERENCES Lentes(Le_codigo),
	UbOrigen_id INT REFERENCES Ubicacion(Ub_id),
	UbDestino_id INT REFERENCES Ubicacion(Ub_id),
	Lentes_cantidad INT NOT NULL
)
								--Ajuste Lentes--
CREATE TABLE Ajuste_Lentes
(
	AjuLe_id INT IDENTITY PRIMARY KEY,
	AjuLe_Fecha DATE NOT NULL,
	Us_id INT REFERENCES Usuario (Us_id)
)

CREATE TABLE Detalle_AjusteLentes
(
	DetAju_id INT IDENTITY PRIMARY KEY,
	AjuLe_id INT NOT NULL,
	Le_codigo VARCHAR(10) REFERENCES Lentes(Le_codigo),
	UbOrigen_id INT REFERENCES Ubicacion(Ub_id),
	Lentes_cantidad INT NOT NULL
)


--------------------------------------------------------------------------------------------------------------
								--Entrada Articulo--
CREATE TABLE Entrada_Articulo
(
	EnAr_id INT IDENTITY PRIMARY KEY,
	EnAr_Fecha DATE NOT NULL,
)

CREATE TABLE Detalle_Entrada_Articulo
(
	DetEn_id INT IDENTITY PRIMARY KEY,
	EnAr_id INT NOT NULL,
	Ar_codigo VARCHAR(13) REFERENCES Articulo(Ar_codigo),
	UbDestino_id INT REFERENCES Ubicacion(Ub_id),
	Articulo_cantidad INT NOT NULL,
	Precio_articulo_Entrada DECIMAL (10,2) NOT NULL
)
								--Salida Articulo--
CREATE TABLE Salida_Articulo
(
	SaAr_id INT IDENTITY PRIMARY KEY,
	SaAr_Fecha DATE NOT NULL,
	Cl_id INT REFERENCES Cliente (Cl_id),
	Em_id INT REFERENCES Empleado(Em_id)
)

CREATE TABLE Detalle_Salida_Articulo
(
	DetSa_id INT IDENTITY PRIMARY KEY,
	SaAr_id INT NOT NULL,
	Ar_codigo VARCHAR(13) REFERENCES Articulo(Ar_codigo),
	UbOrigen_id INT REFERENCES Ubicacion(Ub_id),
	Articulo_cantidad INT NOT NULL,
	Precio_articulo_salida DECIMAL (10,2) NOT NULL
)
								--Desplazamiento Articulo--
CREATE TABLE Desplazamiento_Articulo
(
	DesAr_id INT IDENTITY PRIMARY KEY,
	DesAr_Fecha DATE NOT NULL,
)

CREATE TABLE Detalle_Desplazamiento_Articulo
(
	DetDes_id INT IDENTITY PRIMARY KEY,
	DesAr_id INT NOT NULL,
	Ar_codigo VARCHAR(13) REFERENCES Articulo(Ar_codigo),
	UbOrigen_id INT REFERENCES Ubicacion(Ub_id),
	UbDestino_id INT REFERENCES Ubicacion(Ub_id),
	Articulo_cantidad INT NOT NULL
)
								--Ajuste Articulo--
CREATE TABLE Ajuste_Articulo
(
	AjuAr_id INT IDENTITY PRIMARY KEY,
	AjuAr_Fecha DATE NOT NULL,
	Us_id INT REFERENCES Usuario (Us_id)
)

CREATE TABLE Detalle_AjusteArticulo
(
	DetAju_id INT IDENTITY PRIMARY KEY,
	AjuAr_id INT NOT NULL,
	Ar_codigo VARCHAR(13) REFERENCES Articulo(Ar_codigo),
	UbOrigen_id INT REFERENCES Ubicacion(Ub_id),
	Articulo_cantidad INT NOT NULL
)

CREATE TABLE Articulo_Existencia
(
	ArE_id INT IDENTITY PRIMARY KEY,
	Ar_codigo VARCHAR(13) REFERENCES Articulo(Ar_codigo),
	Ub_id INT REFERENCES Ubicacion(Ub_id) NOT NULL,
	ArE_Existencia INT NOT NULL,
	ArE_UltimaFechaActualizacion VARCHAR(10) NOT NULL,
	ArE_UltimaHoraActualizacion VARCHAR (5) NOT NULL
)


CREATE TABLE Lentes_Existencia
(
	LeE_id INT IDENTITY PRIMARY KEY,
	Le_codigo VARCHAR(10) REFERENCES Lentes(Le_codigo),
	Ub_id INT REFERENCES Ubicacion(Ub_id) NOT NULL,
	LeE_Existencia INT NOT NULL,
	LeE_UltimaFechaActualizacion VARCHAR(10) NOT NULL,
	LeE_UltimaHoraActualizacion VARCHAR (5) NOT NULL
)

INSERT INTO Cliente (Cl_nombre,Cl_telefono,Cl_empresa,Cl_SNTE) VALUES ('Publico general','(000)000-0000','N/A',0)

INSERT INTO Rol_Usuario (RolU_nombre) VALUES('Administrador')
INSERT INTO Rol_Usuario (RolU_nombre) VALUES('Entradas')
INSERT INTO Rol_Usuario (RolU_nombre) VALUES('Salidas')
INSERT INTO Rol_Usuario (RolU_nombre) VALUES('Ajustes')
INSERT INTO Rol_Usuario (RolU_nombre) VALUES('Consultas')



INSERT INTO Usuario (Us_usuario,Us_clave,RolU_id,estatus) VALUES ('Admon','Admon123',1,1)


INSERT INTO Tipo_Lentes(TipoL_nombre,TipoL_descripcion) VALUES ('Oftalmicos','');
INSERT INTO Tipo_Lentes(TipoL_nombre,TipoL_descripcion) VALUES ('Solares','');
INSERT INTO Tipo_Lentes(TipoL_nombre,TipoL_descripcion) VALUES ('Contacto','');
INSERT INTO Tipo_Lentes(TipoL_nombre,TipoL_descripcion) VALUES ('Deportivos','');


INSERT INTO Tipo_Articulo(TipoA_nombre,TipoA_descripcion) VALUES ('Accesorios','');
INSERT INTO Tipo_Articulo(TipoA_nombre,TipoA_descripcion) VALUES ('Limpieza','');
INSERT INTO Tipo_Articulo(TipoA_nombre,TipoA_descripcion) VALUES ('Medicamentos','');

INSERT INTO Ubicacion(Ub_nombre,Ub_descripcion) VALUES ('Mostrador','');
INSERT INTO Ubicacion(Ub_nombre,Ub_descripcion) VALUES ('Almacen','');
INSERT INTO Ubicacion(Ub_nombre,Ub_descripcion) VALUES ('Portafolio Fernanda','Portafolio perteneciente a Fernanda Glz');


SELECT * FROM Usuario us
inner join Rol_Usuario rol on us.RolU_id=rol.RolU_id