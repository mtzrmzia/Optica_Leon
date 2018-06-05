
									--**STORED PROCEDURES TipoLente**--
--INSERTAR TipoLente
CREATE PROC spInsertar_TipoLentes
(
	@TipoL_nombre VARCHAR(50),
	@TipoL_descripcion VARCHAR(250) 
)
AS
INSERT INTO Tipo_Lentes (TipoL_nombre,TipoL_descripcion) VALUES (@TipoL_nombre,@TipoL_descripcion)
GO

--ACTUALIZAR TipoLente
CREATE PROC spActualizar_TipoLentes
(
	@TipoL_id INT,
	@TipoL_nombre VARCHAR(50),
	@TipoL_descripcion VARCHAR(250) 
)
AS
UPDATE Tipo_Lentes SET TipoL_nombre=@TipoL_nombre,
					   TipoL_descripcion=@TipoL_descripcion
WHERE TipoL_id=@TipoL_id
GO

--ELIMINAR TipoLentes
CREATE PROC spEliminar_TipoLentes
(
	@TipoL_id INT
)
AS
DELETE FROM Tipo_Lentes WHERE TipoL_id=@TipoL_id
GO

--CONSULTAR TipoLentes
CREATE PROC spConsultar_TipoLentes
AS
SELECT TipoL_id Id_TipoLentes, TipoL_nombre Tipo_Lentes,TipoL_descripcion Descripcion FROM Tipo_Lentes
GO


--CONSULTAR Un TipoLente
CREATE PROC spConsultar_UnTipoLentes
(
	@TipoL_id INT
)
AS
SELECT TipoL_id Id_TipoLentes, TipoL_nombre Tipo_Lentes,TipoL_descripcion Descripcion FROM Tipo_Lentes
WHERE  TipoL_id=@TipoL_id
GO

--BUSCAR TipoLente
CREATE PROCEDURE spBuscar_TipoLentes
(@textobuscar VARCHAR(50))
AS
SELECT TipoL_id Id_TipoLentes, TipoL_nombre Tipo_Lentes,TipoL_descripcion Descripcion FROM Tipo_Lentes
WHERE TipoL_nombre  like '%'+ @textobuscar + '%'
GO								


									--**STORED PROCEDURES MarcaLentes**--
--INSERTAR MarcaLentes
CREATE PROC spInsertar_MarcaLentes
(
	@Marca_nombre VARCHAR(50)
)
AS
INSERT INTO Marca_Lentes (Marca_nombre) VALUES (@Marca_nombre)
GO

--ACTUALIZAR MarcaLentes
CREATE PROC spActualizar_MarcaLentes
(
	@Marca_id INT,
	@Marca_nombre VARCHAR(50)
)
AS
UPDATE Marca_Lentes SET @Marca_nombre=@Marca_nombre
WHERE Marca_id=@Marca_id
GO

--ELIMINAR MarcaLentes
CREATE PROC spEliminar_MarcaLentes
(
	@Marca_id INT
)
AS
DELETE FROM Marca_Lentes WHERE Marca_id=@Marca_id
GO

--CONSULTAR MarcaLentes
CREATE PROC spConsultar_MarcaLentes
AS
SELECT Marca_id Id_MarcaLentes, Marca_nombre Marca FROM Marca_Lentes
GO


--CONSULTAR Un MarcaLentes
CREATE PROC spConsultar_UnMarcaLentes
(
	@Marca_id INT
)
AS
SELECT Marca_id Id_MarcaLentes, Marca_nombre Marca FROM Marca_Lentes
WHERE Marca_id=@Marca_id
GO

--BUSCAR TipoLente
CREATE PROCEDURE spBuscar_MarcaLentes
(@textobuscar VARCHAR(50))
AS
SELECT Marca_id Id_MarcaLentes, Marca_nombre Marca FROM Marca_Lentes
WHERE Marca_nombre  like '%'+ @textobuscar + '%'
GO								
									
									--**STORED PROCEDURES TipoArticulo**--
--INSERTAR TipoArticulo
CREATE PROC spInsertar_TipoArticulo
(
	@TipoA_nombre VARCHAR(50),
	@TipoA_descripcion VARCHAR(250)
)
AS
INSERT INTO Tipo_Articulo(TipoA_nombre,TipoA_descripcion) VALUES (@TipoA_nombre,@TipoA_descripcion)
GO

--ACTUALIZAR TipoArticulo
CREATE PROC spActualizar_TipoArticulo
(
	@TipoA_id INT,
	@TipoA_nombre VARCHAR(50),
	@TipoA_descripcion VARCHAR(250)
)
AS
UPDATE Tipo_Articulo SET TipoA_nombre=@TipoA_nombre,
						 TipoA_descripcion=@TipoA_descripcion
WHERE TipoA_id=@TipoA_id
GO

--ELIMINAR TipoArticulo
CREATE PROC spEliminar_TipoArticulo
(
	@TipoA_id INT
)
AS
DELETE FROM Tipo_Articulo WHERE TipoA_id=@TipoA_id
GO

--CONSULTAR TipoArticulos
CREATE PROC spConsultar_TipoArticulo
AS
SELECT TipoA_id Id_TipoArticulo, TipoA_nombre Tipo_Articulo,TipoA_descripcion Descripcion FROM Tipo_Articulo
GO

--CONSULTAR Un TipoArticulo
CREATE PROC spConsultar_UnTipoArticulo
(
	@tipoA_id INT
)
AS
SELECT TipoA_id Id_TipoArticulo, TipoA_nombre Tipo_Articulo,TipoA_descripcion Descripcion FROM Tipo_Articulo
WHERE TipoA_id=@TipoA_id
GO

--BUSCAR TipoArticulo
CREATE PROCEDURE spBuscar_TipoArticulo
(@textobuscar VARCHAR(50))
AS
SELECT TipoA_id Id_TipoArticulo, TipoA_nombre Tipo_Articulo,TipoA_descripcion Descripcion FROM Tipo_Articulo
WHERE TipoA_nombre like '%'+ @textobuscar + '%'
GO




									--**STORED PROCEDURES Ubicacion**--
--INSERTAR Ubicaciones
CREATE PROC spInsertar_Ubicacion
(
	@Ub_nombre VARCHAR(50),
	@Ub_descripcion VARCHAR(250)
)
AS
INSERT INTO Ubicacion(Ub_nombre,Ub_descripcion) VALUES (@Ub_nombre,@Ub_descripcion)
GO

--ACTUALIZAR Ubicaciones
CREATE PROC spActualizar_Ubicacion
(
	@Ub_id INT,
	@Ub_nombre VARCHAR(50),
	@Ub_descripcion VARCHAR(250)
)
AS
UPDATE Ubicacion SET Ub_nombre=@Ub_nombre,
					 Ub_descripcion=@Ub_descripcion
WHERE Ub_id=@Ub_id
GO

--ELIMINAR Ubicaciones
CREATE PROC spEliminar_Ubicacion
(
	@Ub_id INT
)
AS
DELETE FROM Ubicacion WHERE Ub_id=@Ub_id
GO

--CONSULTAR Ubicaciones
CREATE PROC spConsultar_Ubicacion
AS
SELECT Ub_id Id_Ubicacion, Ub_nombre Ubicacion,Ub_descripcion Descripcion FROM Ubicacion
GO

--CONSULTAR UnaUbicacion
CREATE PROC spConsultar_UnaUbicacion
(
	@Ub_id INT
)
AS
SELECT Ub_id Id_Ubicacion, Ub_nombre Ubicacion,Ub_descripcion Descripcion FROM Ubicacion
WHERE Ub_id=@Ub_id
GO

--BUSCAR Ubicacion
CREATE PROCEDURE spBuscar_Ubicacion
(@textobuscar VARCHAR(50))
AS
SELECT Ub_id Id_Ubicacion, Ub_nombre Ubicacion,Ub_descripcion Descripcion FROM Ubicacion
WHERE Ub_nombre like '%'+ @textobuscar + '%'
GO	


									--**STORED PROCEDURES Rol**--

--CONSULTAR Rol
CREATE PROC spConsultar_Rol
AS
SELECT RolU_id Id_Rol, RolU_nombre Rol FROM Rol_Usuario
GO

CREATE PROC spConsultaUnRol
(
	@RolU_id INT
)
AS
SELECT RolU_id Id_Rol, RolU_nombre Rol FROM Rol_Usuario
WHERE RolU_id=@RolU_id
GO



									--**STORED PROCEDURES Cliente**--
--INSERTAR Cliente
CREATE PROC spInsertar_Cliente
(
	@Cl_nombre VARCHAR(60),
	@Cl_telefono VARCHAR(13),
	@Cl_empresa VARCHAR(250),
	@Cl_SNTE BIT
)
AS
INSERT INTO Cliente(Cl_nombre,Cl_telefono,Cl_empresa,Cl_SNTE) VALUES (@Cl_nombre,@Cl_telefono,@Cl_empresa,@Cl_SNTE)
GO

--ACTUALIZAR Cliente
CREATE PROC spActualizar_Cliente
(
	@Cl_id INT,
	@Cl_nombre VARCHAR(60),
	@Cl_telefono VARCHAR(13),
	@Cl_empresa VARCHAR(250),
	@Cl_SNTE BIT
)
AS
UPDATE Cliente SET Cl_nombre=@Cl_nombre,
					Cl_telefono=@Cl_telefono,
					Cl_empresa=@Cl_empresa,
					Cl_SNTE=@Cl_SNTE
WHERE Cl_id=@Cl_id
GO

--ELIMINAR Cliente
CREATE PROC spEliminar_Cliente
(
	@Cl_id INT
)
AS
DELETE FROM Cliente WHERE Cl_id =@Cl_id 
GO

--CONSULTAR Cliente
CREATE PROC spConsultar_Cliente
AS
SELECT Cl_id Id_Cliente,Cl_nombre Nombre,Cl_telefono Telefono,Cl_empresa Empresa,Cl_SNTE SNTE FROM Cliente
GO

--CONSULTAR UnCliente
CREATE PROC spConsultar_UnCliente
(
	@Cl_id INT
)
AS
SELECT Cl_id Id_Cliente,Cl_nombre Nombre,Cl_telefono Telefono,Cl_empresa Empresa,Cl_SNTE SNTE FROM Cliente
WHERE Cl_id=@Cl_id
GO

--BUSCAR Cliente
CREATE PROCEDURE spBuscar_Cliente
(@textobuscar VARCHAR(50))
AS
SELECT Cl_id Id_Cliente,Cl_nombre Nombre,Cl_telefono Telefono,Cl_empresa Empresa,Cl_SNTE SNTE FROM Cliente
WHERE Cl_nombre like '%'+ @textobuscar + '%'
GO	


									--**STORED PROCEDURES Empleado**--
--INSERTAR Empleado
CREATE PROC spInsertar_Empleado
(
	@Em_nombre VARCHAR(60)
)
AS
INSERT INTO Empleado(Em_nombre) VALUES(@Em_nombre)
GO

--ACTUALIZAR Empleado
CREATE PROC spActualizar_Empleado
(
	@Em_id INT,
	@Em_nombre VARCHAR(60)
)
AS
UPDATE Empleado SET Em_nombre=@Em_nombre
WHERE Em_id=@Em_id
GO

--ELIMINAR Empleado
CREATE PROC spEliminar_Empleado
(
	@Em_id INT
)
AS
DELETE FROM Empleado WHERE Em_id=@Em_id
GO

--CONSULTAR Empleado
CREATE PROC spConsultar_Empleado
AS
SELECT Em_id Id_Empleado,Em_nombre Nombre FROM Empleado
GO

--CONSULTAR UnEmpleado
CREATE PROC spConsultar_UnEmpleado
(
	@Em_id INT
)
AS
SELECT Em_id Id_Empleado,Em_nombre Nombre FROM Empleado
WHERE Em_id=@Em_id
GO

--BUSCAR Empleado
CREATE PROCEDURE spBuscar_Empleado
(@textobuscar VARCHAR(50))
AS
SELECT Em_id Id_Empleado,Em_nombre Nombre FROM Empleado
WHERE Em_nombre like '%'+ @textobuscar + '%'
GO	



									--**STORED PROCEDURES Usuario**--
--INSERTAR Usuario
CREATE PROC spInsertar_Usuario
(
	@Us_usuario VARCHAR(12),
	@Us_clave VARCHAR(8),
	@RolU_id INT,
	@estatus BIT
)
AS
INSERT INTO Usuario(Us_usuario,Us_clave,RolU_id,estatus) VALUES(@Us_usuario,@Us_clave,@RolU_id,@estatus)
GO

--ACTUALIZAR Usuario
CREATE PROC spActualizar_Usuario
(
	@Us_id INT,
	@Us_usuario VARCHAR(12),
	@Us_clave VARCHAR(8),
	@RolU_id INT,
	@estatus BIT
)
AS
UPDATE Usuario SET Us_usuario=@Us_usuario,
				   Us_clave=@Us_clave,
				   RolU_id=@RolU_id,
				   estatus=@estatus
WHERE Us_id=@Us_id
GO

--ELIMINAR Usuario
CREATE PROC spEliminar_Usuario
(
	@Us_id INT
)
AS
DELETE FROM Usuario WHERE Us_id=@Us_id
GO

--CONSULTAR Usuario
CREATE PROC spConsultar_Usuario
AS
SELECT Us_id Id_Usuario,Us_usuario Usuario,Us_clave Clave,
	   Us.RolU_id Id_Rol ,RolU.RolU_nombre Rol,us.estatus Estatus
FROM Usuario Us
INNER JOIN Rol_Usuario RolU ON Us.RolU_id=RolU.RolU_id
GO

--CONSULTAR UnUsuario
CREATE PROC spConsultar_UnUsuario
(
	@Us_id INT
)
AS
SELECT Us_id Id_Usuario,Us_usuario Usuario,Us_clave Clave,
	   Us.RolU_id Id_Rol ,RolU.RolU_nombre Rol,us.estatus Estatus
FROM Usuario Us
INNER JOIN Rol_Usuario RolU ON Us.RolU_id=RolU.RolU_id
WHERE Us_id=@Us_id
GO

--BUSCAR Usuario
CREATE PROCEDURE spBuscar_Usuario
(@textobuscar VARCHAR(50))
AS
SELECT Us_id Id_Usuario,Us_usuario Usuario,Us_clave Clave,
	   Us.RolU_id Id_Rol ,RolU.RolU_nombre Rol,us.estatus Estatus
FROM Usuario Us
INNER JOIN Rol_Usuario RolU ON Us.RolU_id=RolU.RolU_id
WHERE Us_usuario like '%'+ @textobuscar + '%'
GO	

									--**STORED PROCEDURES Lentes**--
--INSERTAR Lentes
CREATE PROC spInsertar_Lentes
(
	@Le_codigo VARCHAR(10),
	@Le_nombre VARCHAR(50),
	@Marca_id INT,
	@TipoL_id INT,
	@Le_descripcion VARCHAR(250),
	@Le_color VARCHAR (25),
	@Le_imagen IMAGE,
	@Le_precio DECIMAL(10,2)
)
AS
INSERT INTO Lentes(Le_codigo,Le_nombre,Marca_id,TipoL_id,Le_descripcion,Le_color,Le_imagen,Le_precio) 
VALUES (@Le_codigo,@Le_nombre,@Marca_id,@TipoL_id,@Le_descripcion,@Le_color,@Le_imagen,@Le_precio) 
GO

--ACTUALIZAR Lentes
CREATE PROC spActualizar_Lentes
(
	@Le_codigo VARCHAR(10),
	@Le_nombre VARCHAR(50),
	@Marca_id INT,
	@TipoL_id INT,
	@Le_descripcion VARCHAR(250),
	@Le_color VARCHAR (25),
	@Le_imagen IMAGE,
	@Le_precio DECIMAL(10,2)
)
AS
UPDATE Lentes SET Le_nombre=@Le_nombre,
				  Marca_id=@Marca_id,
				  TipoL_id=@TipoL_id,
				  Le_descripcion=@Le_descripcion,
				  Le_color=@Le_color,
				  Le_imagen=@Le_imagen,
				  Le_precio=@Le_precio
WHERE Le_codigo=@Le_codigo
GO

--ELIMINAR Lentes
CREATE PROC spEliminar_Lentes
(
	@Le_codigo VARCHAR(10)
)
AS
DELETE FROM Lentes WHERE Le_codigo=@Le_codigo
GO

--CONSULTAR Lentes
CREATE PROC spConsultar_Lentes
AS
SELECT Le.Le_codigo Codigo,Le.Le_nombre Nombre, Le.Marca_id Id_Marca,MarcaL.Marca_nombre Marca,
	   TipoL.tipoL_id Id_TipoLentes,TipoL.TipoL_nombre Tipo_Lentes,
	   Le.Le_color Color, Le.Le_descripcion Descripcion,Le.Le_imagen Imagen,Le.Le_precio Precio	   
FROM Lentes le
INNER JOIN Tipo_Lentes TipoL ON Le.TipoL_id=TipoL.TipoL_id
INNER JOIN Marca_Lentes MarcaL ON Le.Marca_id=MarcaL.Marca_id
GO


--CONSULTAR UnLentes
CREATE PROC spConsultar_UnLentes
(
	@Le_codigo VARCHAR(10)
)
AS
SELECT Le.Le_codigo Codigo,Le.Le_nombre Nombre, Le.Marca_id Id_Marca,MarcaL.Marca_nombre Marca,
	   TipoL.tipoL_id Id_TipoLentes,TipoL.TipoL_nombre Tipo_Lentes,
	   Le.Le_color Color, Le.Le_descripcion Descripcion,Le.Le_imagen Imagen,Le.Le_precio Precio	   
FROM Lentes le
INNER JOIN Tipo_Lentes TipoL ON Le.TipoL_id=TipoL.TipoL_id
INNER JOIN Marca_Lentes MarcaL ON Le.Marca_id=MarcaL.Marca_id
WHERE Le.Le_codigo=@Le_codigo
GO

--BUSCAR Lentes
CREATE PROCEDURE spBuscar_Lentes
(@textobuscar VARCHAR(50))
AS
SELECT Le.Le_codigo Codigo,Le.Le_nombre Nombre, Le.Marca_id Id_Marca,MarcaL.Marca_nombre Marca,
	   TipoL.tipoL_id Id_TipoLentes,TipoL.TipoL_nombre Tipo_Lentes,
	   Le.Le_color Color, Le.Le_descripcion Descripcion,Le.Le_imagen Imagen,Le.Le_precio Precio	   
FROM Lentes le
INNER JOIN Tipo_Lentes TipoL ON Le.TipoL_id=TipoL.TipoL_id
INNER JOIN Marca_Lentes MarcaL ON Le.Marca_id=MarcaL.Marca_id
WHERE Le.Le_nombre like '%'+ @textobuscar + '%' OR Le.Le_codigo like '%'+ @textobuscar + '%'
GO	



									--**STORED PROCEDURES Articulos**--
--INSERTAR Articulo
CREATE PROC spInsertar_Articulo
(
	@Ar_codigo VARCHAR(13),
	@Ar_nombre VARCHAR(50),
    @Ar_descripcion VARCHAR(250),
	@Ar_imagen IMAGE,
	@Ar_precio DECIMAL(10,2),
	@TipoA_id INT
)
AS
INSERT INTO Articulo(Ar_codigo,Ar_nombre,Ar_descripcion,Ar_imagen,Ar_precio,TipoA_id)
VALUES (@Ar_codigo,@Ar_nombre,@Ar_descripcion,@Ar_imagen,@Ar_precio,@TipoA_id)
GO

--ACTUALIZAR Articulo
CREATE PROC spActualizar_Articulo
(
	@Ar_codigo VARCHAR(13),
	@Ar_nombre VARCHAR(50),
    @Ar_descripcion VARCHAR(250),
	@Ar_imagen IMAGE,
	@Ar_precio DECIMAL(10,2),
	@TipoA_id INT
)
AS
UPDATE Articulo SET Ar_nombre=@Ar_nombre,
				    Ar_descripcion=@Ar_descripcion,
					Ar_imagen=@Ar_imagen,
					Ar_precio=@Ar_precio,
					tipoA_id=@tipoA_id
WHERE Ar_codigo= @Ar_codigo
GO

--ELIMINAR Articulo
CREATE PROC spEliminar_Articulo
(
	@Ar_codigo VARCHAR(13)
)
AS
DELETE FROM Articulo WHERE Ar_codigo= @Ar_codigo
GO

--CONSULTAR Articulo
CREATE PROC spConsultar_Articulo
AS
SELECT Ar.Ar_codigo Codigo,Ar.Ar_nombre Nombre,Ar.Ar_descripcion Descripcion,
	   TipoAr.TipoA_id Id_TipoArticulo,TipoAr.TipoA_nombre Tipo_Articulo,
	   Ar.Ar_imagen Imagen,Ar.Ar_precio Precio
FROM Articulo Ar
INNER JOIN Tipo_Articulo TipoAr ON ar.tipoA_id=TipoAr.tipoA_id
GO


--CONSULTAR unArticulo
CREATE PROC spConsultar_UnArticulo
(
	@Ar_codigo VARCHAR(13)
)
AS
SELECT Ar.Ar_codigo Codigo,Ar.Ar_nombre Nombre,Ar.Ar_descripcion Descripcion,
	   TipoAr.TipoA_id Id_TipoArticulo,TipoAr.TipoA_nombre Tipo_Articulo,
	   Ar.Ar_imagen Imagen,Ar.Ar_precio Precio
FROM Articulo Ar
INNER JOIN Tipo_Articulo TipoAr ON ar.tipoA_id=TipoAr.tipoA_id
WHERE Ar_codigo= @Ar_codigo 
GO


--BUSCAR Articulo
CREATE PROCEDURE spBuscar_Articulo
(@textobuscar VARCHAR(50))
AS
SELECT Ar.Ar_codigo Codigo,Ar.Ar_nombre Nombre,Ar.Ar_descripcion Descripcion,
	   TipoAr.TipoA_id Id_TipoArticulo,TipoAr.TipoA_nombre Tipo_Articulo,
	   Ar.Ar_imagen Imagen,Ar.Ar_precio Precio
FROM Articulo Ar
INNER JOIN Tipo_Articulo TipoAr ON ar.tipoA_id=TipoAr.tipoA_id
WHERE Ar.Ar_nombre like '%'+ @textobuscar + '%' OR Ar.Ar_codigo like '%'+ @textobuscar + '%'
GO	


-------------------------------------------------------------LENTES--------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES EntradaLentes/DetalleEntradaLentes**--
--INSERTAR EntradaLentes
CREATE PROC spInsertar_EntradaLentes
(
	@EnLe_Fecha DATE
)
AS
INSERT INTO Entrada_Lentes(EnLe_Fecha) VALUES (@EnLe_Fecha)
--Obtengo Código Siguiente
SELECT MAX (EnLe_id) folio_Entrada_Lentes FROM Entrada_Lentes
GO


--INSERTAR DetalleEntradaLentes
CREATE PROC spInsertar_DetalleEntradaLentes
(
	@EnLe_id INT ,
	@Le_codigo VARCHAR(10),
	@UbDestino_id INT,
	@Lentes_cantidad INT,
	@Precio_lentes_Entrada DECIMAL (10,2)
)
AS
INSERT INTO Detalle_Entrada_Lentes(EnLe_id,Le_codigo,UbDestino_id ,Lentes_cantidad,Precio_lentes_Entrada)
			VALUES (@EnLe_id,@Le_codigo,@UbDestino_id ,@Lentes_cantidad,@Precio_lentes_Entrada)
GO

--Consultar EntradaLentes
CREATE PROC spConsultar_EntradaLentes
AS
SELECT EnLe.EnLe_id Id_Entrada ,EnLe.EnLe_Fecha Fecha_Entrada,
	   SUM(DetalleEnL.Precio_lentes_Entrada*DetalleEnL.lentes_cantidad) Total
FROM Entrada_Lentes EnLe
INNER JOIN Detalle_Entrada_Lentes DetalleEnL ON EnLe.EnLe_id=DetalleEnL.EnLe_id
GROUP BY EnLe.EnLe_id ,EnLe.EnLe_Fecha
ORDER BY EnLe.EnLe_Fecha DESC
GO

--CONSULTAR UnEntradaLentes
CREATE PROC spConsultar_Un_Entrada_Lentes
(
	@EnLe_id INT
)
AS
SELECT EnLe.EnLe_id Id_Entrada ,EnLe.EnLe_Fecha Fecha_Entrada,
	   SUM(DetalleEnL.Precio_lentes_Entrada*DetalleEnL.lentes_cantidad) Total
FROM Entrada_Lentes EnLe
INNER JOIN Detalle_Entrada_Lentes DetalleEnL ON EnLe.EnLe_id=DetalleEnL.EnLe_id
WHERE EnLe.EnLe_id=@EnLe_id
GROUP BY EnLe.EnLe_id ,EnLe.EnLe_Fecha
GO


--BUSCAR EntradaLentes
CREATE PROCEDURE spBuscar_Entrada_LentesPorFecha
(
	@FechaInicial VARCHAR(50),
	@Fechafinal VARCHAR(50)
)
AS
SELECT EnLe.EnLe_id Id_Entrada ,EnLe.EnLe_Fecha Fecha_Entrada,
	   SUM(DetalleEnL.Precio_lentes_Entrada*DetalleEnL.lentes_cantidad) Total
FROM Entrada_Lentes EnLe
INNER JOIN Detalle_Entrada_Lentes DetalleEnL ON EnLe.EnLe_id=DetalleEnL.EnLe_id
WHERE (CONVERT(VARCHAR,EnLe.EnLe_Fecha,112))   BETWEEN @FechaInicial AND @Fechafinal
GROUP BY EnLe.EnLe_id ,EnLe.EnLe_Fecha
ORDER BY EnLe.EnLe_Fecha DESC
GO


----CONSULTAR DetalleEntradaLentes
CREATE PROC spConsultar_Un_Detalle_EntradaLentes
(
	@EnLe_id INT
)
AS
SELECT  DetEn.EnLe_id Id_Entrada, DetEn.DetEn_id Id_DetalleEntrada,
		DetEn.Le_codigo Codigo,Le.Le_nombre Lentes,
		DetEn.UbDestino_id Id_Ubicacion_Destino,Ub.Ub_nombre Ubicacion_Destino,
		DetEn.Lentes_cantidad Cantidad,
		DetEn.Precio_lentes_Entrada Precio,
		(DetEn.Lentes_cantidad*DetEn.Precio_lentes_Entrada) Subtotal
FROM Detalle_Entrada_Lentes DetEn 
INNER JOIN Entrada_Lentes EnLe ON DetEn.EnLe_id=EnLe.EnLe_id
INNER JOIN Lentes Le ON DetEn.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON DetEn.UbDestino_id=Ub.Ub_id
WHERE DetEn.EnLe_id=@EnLe_id
GO

----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES SalidaLentes/DetalleSalidaLentes**--

--INSERTAR SalidaLentes
CREATE PROC spInsertar_SalidaLentes
(
	@SaLe_Fecha DATE,
	@Cl_id INT,
	@Em_id INT
)
AS
INSERT INTO Salida_Lentes(SaLe_Fecha,Cl_id,Em_id) VALUES (@SaLe_Fecha,@Cl_id,@Em_id)
--Obtengo Código Siguiente
SELECT MAX (SaLe_id) folio_Salida_Lentes FROM Salida_Lentes
GO


--INSERTAR DetalleSalidaLentes
CREATE PROC spInsertar_DetalleSalidaLentes
(	
	@SaLe_id INT ,
	@Le_codigo VARCHAR(10),
	@UbOrigen_id INT,
	@Lentes_cantidad INT,
	@Precio_lentes_Salida DECIMAL (10,2)
)
AS
INSERT INTO Detalle_Salida_Lentes(SaLe_id,Le_codigo,UbOrigen_id ,Lentes_cantidad,Precio_lentes_Salida)
			VALUES (@SaLe_id,@Le_codigo,@UbOrigen_id ,@Lentes_cantidad,@Precio_lentes_Salida)
GO

--CONSULTAR SalidaLentes
CREATE PROC spConsultar_SalidaLentes
AS
SELECT SaLe.SaLe_id Id_Salida ,SaLe.SaLe_Fecha Fecha_Salida,
	   SaLe.Cl_id Id_Cliente,Cl.Cl_nombre Cliente,
	   SaLe.Em_id Id_Empleado,Em.Em_nombre Empleado, 
	   SUM(DetalleSaL.Precio_lentes_Salida*DetalleSaL.lentes_cantidad) Total
FROM Salida_Lentes SaLe
INNER JOIN Empleado Em ON SaLe.em_id=em.em_id
INNER JOIN Cliente Cl ON SaLe.Cl_id=Cl.Cl_id
INNER JOIN Detalle_Salida_Lentes DetalleSaL ON SaLe.SaLe_id=DetalleSaL.SaLe_id
GROUP BY SaLe.SaLe_id ,SaLe.SaLe_Fecha,
		 SaLe.Cl_id,Cl.Cl_nombre,
		 SaLe.Em_id ,Em.Em_nombre
ORDER BY SaLe.SaLe_Fecha DESC
GO

--CONSULTAR UnSalidaLentes
CREATE PROC spConsultar_Un_Salida_Lentes
(
	@SaLe_id INT
)
AS
SELECT SaLe.SaLe_id Id_Salida ,SaLe.SaLe_Fecha Fecha_Salida,
	   SaLe.Cl_id Id_Cliente,Cl.Cl_nombre Cliente,
	   SaLe.Em_id Id_Empleado,Em.Em_nombre Empleado, 
	   SUM(DetalleSaL.Precio_lentes_Salida*DetalleSaL.lentes_cantidad) Total
FROM Salida_Lentes SaLe
INNER JOIN Empleado Em ON SaLe.em_id=em.em_id
INNER JOIN Cliente Cl ON SaLe.Cl_id=Cl.Cl_id
INNER JOIN Detalle_Salida_Lentes DetalleSaL ON SaLe.SaLe_id=DetalleSaL.SaLe_id
WHERE SaLe.SaLe_id=@SaLe_id
GROUP BY SaLe.SaLe_id ,SaLe.SaLe_Fecha,
		 SaLe.Cl_id,Cl.Cl_nombre,
		 SaLe.Em_id ,Em.Em_nombre
GO

--BUSCAR SalidaLentes
CREATE PROCEDURE spBuscar_Salida_LentesPorFecha
(
	@FechaInicial VARCHAR(50),
	@Fechafinal VARCHAR(50)
)
AS
SELECT SaLe.SaLe_id Id_Salida ,SaLe.SaLe_Fecha Fecha_Salida,
	   SaLe.Cl_id Id_Cliente,Cl.Cl_nombre Cliente,
	   SaLe.Em_id Id_Empleado,Em.Em_nombre Empleado, 
	   SUM(DetalleSaL.Precio_lentes_Salida*DetalleSaL.lentes_cantidad) Total
FROM Salida_Lentes SaLe
INNER JOIN Empleado Em ON SaLe.em_id=em.em_id
INNER JOIN Cliente Cl ON SaLe.Cl_id=Cl.Cl_id
INNER JOIN Detalle_Salida_Lentes DetalleSaL ON SaLe.SaLe_id=DetalleSaL.SaLe_id
WHERE (CONVERT(VARCHAR,SaLe.SaLe_Fecha,112)) BETWEEN @FechaInicial AND @Fechafinal
GROUP BY SaLe.SaLe_id ,SaLe.SaLe_Fecha,
		 SaLe.Cl_id,Cl.Cl_nombre,
		 SaLe.Em_id ,Em.Em_nombre
ORDER BY SaLe.SaLe_Fecha DESC
GO


----CONSULTAR DetalleSalidaLentes
CREATE PROC spConsultar_Un_Detalle_SalidaLentes
(
	@SaLe_id INT
)
AS
SELECT  DetSa.SaLe_id Id_Salida, DetSa.DetSa_id Id_DetalleSalida,
		DetSa.Le_codigo Codigo,Le.Le_nombre Lentes,
		DetSa.UbOrigen_id Id_Ubicacion_Origen,Ub.Ub_nombre Ubicacion_Origen,
		DetSa.Lentes_cantidad Cantidad,
		DetSa.Precio_lentes_Salida Precio,
		(DetSa.Lentes_cantidad*DetSa.Precio_lentes_Salida) Subtotal
FROM Detalle_Salida_Lentes DetSa 
INNER JOIN Salida_Lentes SaLe ON DetSa.SaLe_id=SaLe.SaLe_id
INNER JOIN Lentes Le ON DetSa.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON DetSa.UbOrigen_id=Ub.Ub_id
WHERE DetSa.SaLe_id=@SaLe_id
GO

----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES DesplazamientoLentes/DetalleDesplazamientoLentes**--

--INSERTAR DesplazamientoLentes
CREATE PROC spInsertar_DesplazamientoLentes
(
	@DesLe_Fecha DATE
)
AS
INSERT INTO Desplazamiento_Lentes(DesLe_Fecha) VALUES (@DesLe_Fecha)
--Obtengo Código Siguiente
SELECT MAX (DesLe_id) folio_Desplazamiento_Lentes FROM Desplazamiento_Lentes
GO

--INSERTAR DetalleDesplazamientoLentes
CREATE PROC spInsertar_DetalleDesplazamientoLentes
(	
	@DesLe_id INT,
	@Le_codigo VARCHAR(10),
	@UbOrigen_id INT,
	@UbDestino_id INT,
	@Lentes_cantidad INT
)
AS
INSERT INTO Detalle_Desplazamiento_Lentes(DesLe_id ,Le_codigo,UbOrigen_id ,UbDestino_id,Lentes_cantidad)
			VALUES (@DesLe_id ,@Le_codigo,@UbOrigen_id,@UbDestino_id,@Lentes_cantidad)
GO

--CONSULTAR DesplazamientoLentes
CREATE PROC spConsultar_DesplazamientoLentes
AS
SELECT DesLe.DesLe_id Id_Desplazamiento ,DesLe.DesLe_Fecha Fecha_Desplazamiento
FROM Desplazamiento_Lentes DesLe
GROUP BY DesLe.DesLe_id ,DesLe.DesLe_Fecha
ORDER BY DesLe.DesLe_Fecha DESC
GO


--CONSULTAR UnDesplazamientoLentes
CREATE PROC spConsultar_Un_DesplazamientoLentes
(
	@DesLe_id INT
)
AS
SELECT DesLe.DesLe_id Id_Desplazamiento ,DesLe.DesLe_Fecha Fecha_Desplazamiento
FROM Desplazamiento_Lentes DesLe
WHERE DesLe.DesLe_id=@DesLe_id
GROUP BY DesLe.DesLe_id ,DesLe.DesLe_Fecha
GO


--BUSCAR UnDesplazamientoLentes
CREATE PROCEDURE spBuscar_Desplazamiento_LentesPorFecha
(
	@FechaInicial VARCHAR(50),
	@Fechafinal VARCHAR(50)
)
AS
SELECT DesLe.DesLe_id Id_Desplazamiento ,DesLe.DesLe_Fecha Fecha_Desplazamiento
FROM Desplazamiento_Lentes DesLe
WHERE (CONVERT(VARCHAR,DesLe.DesLe_Fecha,112)) BETWEEN @FechaInicial AND @Fechafinal
GROUP BY DesLe.DesLe_id ,DesLe.DesLe_Fecha
ORDER BY DesLe.DesLe_Fecha DESC
GO



----CONSULTAR DetalleDesplazamientoLentes
CREATE PROC spConsultar_Un_Detalle_DesplazamientoLentes
(
	@DesLe_id INT
)
AS
SELECT  DetDes.DesLe_id Id_Desplazamiento, DetDes.DetDes_id Id_DetalleDesplazamiento,
		DetDes.Le_codigo Codigo,Le.Le_nombre Lentes,
		DetDes.UbOrigen_id Id_Ubicacion_Origen,Ub.Ub_nombre Ubicacion_Origen,
		DetDes.UbDestino_id Id_Ubicacion_Destino,Ubi.Ub_nombre Ubicacion_Destino,
		DetDes.Lentes_cantidad Cantidad
FROM Detalle_Desplazamiento_Lentes DetDes
INNER JOIN Desplazamiento_Lentes DesLe ON DetDes.DesLe_id=DesLe.DesLe_id
INNER JOIN Lentes Le ON DetDes.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON DetDes.UbOrigen_id=Ub.Ub_id 
INNER JOIN Ubicacion Ubi ON DetDes.UbDestino_id=Ubi.Ub_id
WHERE DetDes.DesLe_id=@DesLe_id
GO
----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES AjusteLentes/DetalleAjusteLentes**--

--INSERTAR AjusteLentes
CREATE PROC spInsertar_AjusteLentes
(
	@AjuLe_Fecha DATE,
	@Us_id INT
)
AS
INSERT INTO Ajuste_Lentes(AjuLe_Fecha,Us_id) VALUES (@AjuLe_Fecha,@Us_id)
--Obtengo Código Siguiente
SELECT MAX (AjuLe_id) folio_Ajuste_Lentes FROM Ajuste_Lentes
GO


--INSERTAR DetalleDesplazamientoLentes
CREATE PROC spInsertar_DetalleAjusteLentes
(	
	@AjuLe_id INT,
	@Le_codigo VARCHAR(10),
	@UbOrigen_id INT,
	@Lentes_cantidad INT
)
AS
INSERT INTO Detalle_AjusteLentes(AjuLe_id ,Le_codigo,UbOrigen_id ,Lentes_cantidad)
			VALUES (@AjuLe_id ,@Le_codigo,@UbOrigen_id ,@Lentes_cantidad)
GO

--Consultar AjusteLentes
CREATE PROC spConsultar_AjusteLentes
AS
SELECT AjuLe.AjuLe_id Id_Ajuste ,AjuLe.AjuLe_Fecha Fecha_Ajuste,
	   AjuLe.Us_id Id_Usuario,Us.Us_usuario Autorizo
FROM Ajuste_Lentes AjuLe
INNER JOIN Usuario Us ON AjuLe.Us_id=Us.Us_id
GROUP BY AjuLe.AjuLe_id ,AjuLe.AjuLe_Fecha,
		 AjuLe.Us_id,Us.Us_usuario
ORDER BY AjuLe.AjuLe_Fecha DESC
GO


--CONSULTAR UnAjusteLentes
CREATE PROC spConsultar_Un_AjusteLentes
(
	@AjuLe_id INT
)
AS
SELECT AjuLe.AjuLe_id Id_Ajuste ,AjuLe.AjuLe_Fecha Fecha_Ajuste,
	   AjuLe.Us_id Id_Usuario,Us.Us_usuario Autorizo
FROM Ajuste_Lentes AjuLe
INNER JOIN Usuario Us ON AjuLe.Us_id=Us.Us_id
WHERE AjuLe.AjuLe_id=@AjuLe_id
GROUP BY AjuLe.AjuLe_id ,AjuLe.AjuLe_Fecha,
		 AjuLe.Us_id,Us.Us_usuario
GO

--BUSCAR UnAjusteLentes
CREATE PROCEDURE spBuscar_Ajuste_LentesPorFecha
(
	@FechaInicial VARCHAR(50),
	@Fechafinal VARCHAR(50)
)
AS
SELECT AjuLe.AjuLe_id Id_Ajuste ,AjuLe.AjuLe_Fecha Fecha_Ajuste,
	   AjuLe.Us_id Id_Usuario,Us.Us_usuario Autorizo
FROM Ajuste_Lentes AjuLe
INNER JOIN Usuario Us ON AjuLe.Us_id=Us.Us_id
WHERE (CONVERT(VARCHAR,AjuLe.AjuLe_Fecha,112))   BETWEEN @FechaInicial AND @Fechafinal
GROUP BY AjuLe.AjuLe_id ,AjuLe.AjuLe_Fecha,
		 AjuLe.Us_id,Us.Us_usuario
ORDER BY AjuLe.AjuLe_Fecha DESC
GO


----CONSULTAR DetalleAjusteLentes
CREATE PROC spConsultar_Un_Detalle_AjusteLentes
(
	@AjuLe_id INT
)
AS
SELECT  Detaju.AjuLe_id Id_Ajuste,DetAju.DetAju_id Id_DetalleAjuste,
		DetAju.Le_codigo Codigo,Le.Le_nombre Lentes,
		DetAju.UbOrigen_id Id_Ubicacion_Origen,Ub.Ub_nombre Ubicacion_Origen,
		DetAju.Lentes_cantidad Cantidad
FROM Detalle_AjusteLentes DetAju
INNER JOIN Ajuste_Lentes AjuLe ON Detaju.AjuLe_id=AjuLe.AjuLe_id
INNER JOIN Lentes Le ON DetAju.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON DetAju.UbOrigen_id=Ub.Ub_id
WHERE DetAju.AjuLe_id=@AjuLe_id
GO


-------------------------------------------------------------ARTICULO--------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES EntradaArticulo/DetalleArticuloLentes**--
--INSERTAR EntradaArticulo
CREATE PROC spInsertar_EntradaArticulo
(
	@EnAr_Fecha DATE
)
AS
INSERT INTO Entrada_Articulo(EnAr_Fecha) VALUES (@EnAr_Fecha)
--Obtengo Código Siguiente
SELECT MAX (EnAr_id) folio_Entrada_Articulo FROM Entrada_Articulo
GO

--INSERTAR DetalleEntradaArticulo
CREATE PROC spInsertar_DetalleEntradaArticulo
(
	@EnAr_id INT ,
	@Ar_codigo VARCHAR(13),
	@UbDestino_id INT,
	@Articulo_cantidad INT,
	@Precio_articulo_Entrada DECIMAL (10,2)
)
AS
INSERT INTO Detalle_Entrada_Articulo(EnAr_id,Ar_codigo,UbDestino_id ,Articulo_cantidad,Precio_articulo_Entrada)
			VALUES (@EnAr_id,@Ar_codigo,@UbDestino_id ,@Articulo_cantidad,@Precio_articulo_Entrada)
GO

--CONSULTAR EntradaArticulo
CREATE PROC spConsultar_EntradaArticulo
AS
SELECT EnAr.EnAr_id Id_Entrada ,EnAr.EnAr_Fecha Fecha_Entrada,
	   SUM(DetalleEnA.Precio_articulo_Entrada*DetalleEnA.Articulo_cantidad) Total
FROM Entrada_Articulo EnAr
INNER JOIN Detalle_Entrada_Articulo DetalleEnA ON EnAr.EnAr_id=DetalleEnA.EnAr_id
GROUP BY EnAr.EnAr_id ,EnAr.EnAr_Fecha
ORDER BY EnAr.EnAr_Fecha DESC
GO

--CONSULTAR UnEntradaArticulo
CREATE PROC spConsultar_Un_Entrada_Articulo
(
	@EnAr_id INT
)
AS
SELECT EnAr.EnAr_id Id_Entrada ,EnAr.EnAr_Fecha Fecha_Entrada,
	   SUM(DetalleEnA.Precio_articulo_Entrada*DetalleEnA.Articulo_cantidad) Total
FROM Entrada_Articulo EnAr
INNER JOIN Detalle_Entrada_Articulo DetalleEnA ON EnAr.EnAr_id=DetalleEnA.EnAr_id
WHERE EnAr.EnAr_id=@EnAr_id
GROUP BY EnAr.EnAr_id ,EnAr.EnAr_Fecha
GO


--BUSCAR EntradaArticulo
CREATE PROCEDURE spBuscar_Entrada_ArticuloPorFecha
(
	@FechaInicial VARCHAR(50),
	@Fechafinal VARCHAR(50)
)
AS
SELECT EnAr.EnAr_id Id_Entrada ,EnAr.EnAr_Fecha Fecha_Entrada,
	   SUM(DetalleEnA.Precio_articulo_Entrada*DetalleEnA.Articulo_cantidad) Total
FROM Entrada_Articulo EnAr
INNER JOIN Detalle_Entrada_Articulo DetalleEnA ON EnAr.EnAr_id=DetalleEnA.EnAr_id
WHERE (CONVERT(VARCHAR,EnAr.EnAr_Fecha,112))   BETWEEN @FechaInicial AND @Fechafinal
GROUP BY EnAr.EnAr_id ,EnAr.EnAr_Fecha
ORDER BY EnAr.EnAr_Fecha DESC
GO


----CONSULTAR DetalleEntradaArticulo
CREATE PROC spConsultar_Un_Detalle_EntradaArticulo
(
	@EnAr_id INT
)
AS
SELECT  DetEn.EnAr_id Id_Entrada, DetEn.DetEn_id Id_DetalleEntrada,
		DetEn.Ar_codigo Codigo,Ar.Ar_codigo Articulo,
		DetEn.UbDestino_id Id_Ubicacion_Destino,Ub.Ub_nombre Ubicacion_Destino,
		DetEn.Articulo_cantidad Cantidad,
		DetEn.Precio_articulo_Entrada Precio,
		(DetEn.Articulo_cantidad*DetEn.Precio_articulo_Entrada) Subtotal
FROM Detalle_Entrada_Articulo DetEn 
INNER JOIN Entrada_Articulo EnAr ON DetEn.EnAr_id=EnAr.EnAr_id
INNER JOIN Articulo Ar ON DetEn.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON DetEn.UbDestino_id=Ub.Ub_id
WHERE DetEn.EnAr_id=@EnAr_id
GO

----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES SalidaArticulo/DetalleSalidaArticulo**--

--INSERTAR SalidaArticulo
CREATE PROC spInsertar_SalidaArticulo
(
	@SaAr_Fecha DATE,
	@Cl_id INT,
	@Em_id INT
)
AS
INSERT INTO Salida_Articulo(SaAr_Fecha,Cl_id,Em_id) VALUES (@SaAr_Fecha,@Cl_id,@Em_id)
--Obtengo Código Siguiente
SELECT MAX (SaAr_id) folio_Salida_Articulo FROM Salida_Articulo
GO

--INSERTAR DetalleSalidaArticulo
CREATE PROC spInsertar_DetalleSalidaArticulo
(	
	@SaAr_id INT ,
	@Ar_codigo VARCHAR(13),
	@UbOrigen_id INT,
	@Articulo_cantidad INT,
	@Precio_articulo_salida DECIMAL (10,2)
)
AS
INSERT INTO Detalle_Salida_Articulo(SaAr_id,Ar_codigo,UbOrigen_id ,Articulo_cantidad,Precio_articulo_salida)
			VALUES (@SaAr_id,@Ar_codigo,@UbOrigen_id ,@Articulo_cantidad,@Precio_articulo_salida)
GO

--Consultar SalidaArticulo
CREATE PROC spConsultar_SalidaArticulo
AS
SELECT SaAr.SaAr_id Id_Salida ,SaAr.SaAr_Fecha Fecha_Salida,
	   SaAr.Cl_id Id_Cliente,Cl.Cl_nombre Cliente,
	   SaAr.Em_id Id_Empleado,Em.Em_nombre Empleado, 
	   SUM(DetalleSaL.Precio_articulo_salida*DetalleSaL.Articulo_cantidad) Total
FROM Salida_Articulo SaAr
INNER JOIN Empleado Em ON SaAr.em_id=em.em_id
INNER JOIN Cliente Cl ON SaAr.Cl_id=Cl.Cl_id
INNER JOIN Detalle_Salida_Articulo DetalleSaL ON SaAr.SaAr_id=DetalleSaL.SaAr_id
GROUP BY SaAr.SaAr_id ,SaAr.SaAr_Fecha,
		 SaAr.Cl_id,Cl.Cl_nombre,
		 SaAr.Em_id ,Em.Em_nombre
ORDER BY SaAr.SaAr_Fecha DESC
GO

--CONSULTAR UnSalidaArticulo
CREATE PROC spConsultar_Un_Salida_Articulo
(
	@SaAr_id INT
)
AS
SELECT SaAr.SaAr_id Id_Salida ,SaAr.SaAr_Fecha Fecha_Salida,
	   SaAr.Cl_id Id_Cliente,Cl.Cl_nombre Cliente,
	   SaAr.Em_id Id_Empleado,Em.Em_nombre Empleado, 
	   SUM(DetalleSaL.Precio_articulo_salida*DetalleSaL.Articulo_cantidad) Total
FROM Salida_Articulo SaAr
INNER JOIN Empleado Em ON SaAr.em_id=em.em_id
INNER JOIN Cliente Cl ON SaAr.Cl_id=Cl.Cl_id
INNER JOIN Detalle_Salida_Articulo DetalleSaL ON SaAr.SaAr_id=DetalleSaL.SaAr_id
WHERE SaAr.SaAr_id=@SaAr_id
GROUP BY SaAr.SaAr_id ,SaAr.SaAr_Fecha,
		 SaAr.Cl_id,Cl.Cl_nombre,
		 SaAr.Em_id ,Em.Em_nombre
GO


--BUSCAR SalidaArticulo
CREATE PROCEDURE spBuscar_Salida_ArticuloPorFecha
(
	@FechaInicial VARCHAR(50),
	@Fechafinal VARCHAR(50)
)
AS
SELECT SaAr.SaAr_id Id_Salida ,SaAr.SaAr_Fecha Fecha_Salida,
	   SaAr.Cl_id Id_Cliente,Cl.Cl_nombre Cliente,
	   SaAr.Em_id Id_Empleado,Em.Em_nombre Empleado, 
	   SUM(DetalleSaL.Precio_articulo_salida*DetalleSaL.Articulo_cantidad) Total
FROM Salida_Articulo SaAr
INNER JOIN Empleado Em ON SaAr.em_id=em.em_id
INNER JOIN Cliente Cl ON SaAr.Cl_id=Cl.Cl_id
INNER JOIN Detalle_Salida_Articulo DetalleSaL ON SaAr.SaAr_id=DetalleSaL.SaAr_id
WHERE (CONVERT(VARCHAR,SaAr.SaAr_Fecha,112))   BETWEEN @FechaInicial AND @Fechafinal
GROUP BY SaAr.SaAr_id ,SaAr.SaAr_Fecha,
		 SaAr.Cl_id,Cl.Cl_nombre,
		 SaAr.Em_id ,Em.Em_nombre
ORDER BY SaAr.SaAr_Fecha DESC
GO

----CONSULTAR DetalleSalidaArticulo
CREATE PROC spConsultar_Un_Detalle_SalidaArticulo
(
	@SaAr_id INT
)
AS
SELECT  DetSa.SaAr_id Id_Salida, DetSa.DetSa_id Id_DetalleSalida,
		DetSa.Ar_codigo Codigo,Ar.Ar_nombre Articulo,
		DetSa.UbOrigen_id Id_Ubicacion_Origen,Ub.Ub_nombre Ubicacion_Origen,
		DetSa.Articulo_cantidad Cantidad,
		DetSa.Precio_articulo_salida Precio,
		(DetSa.Articulo_cantidad*DetSa.Precio_articulo_salida) Subtotal
FROM Detalle_Salida_Articulo DetSa
INNER JOIN Salida_Articulo SaAr ON DetSa.SaAr_id=SaAr.SaAr_id
INNER JOIN Articulo Ar ON DetSa.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON DetSa.UbOrigen_id=Ub.Ub_id
WHERE DetSa.SaAr_id=@SaAr_id
GO

----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES DesplazamientoArticulo/DetalleDesplazamientoArticulo**--

--INSERTAR DesplazamientoArticulo
CREATE PROC spInsertar_DesplazamientoArticulo
(
	@DesAr_Fecha DATE
)
AS
INSERT INTO Desplazamiento_Articulo(DesAr_Fecha) VALUES (@DesAr_Fecha)
--Obtengo Código Siguiente
SELECT MAX (DesAr_id) folio_Desplazamiento_Articulo FROM Desplazamiento_Articulo
GO

--INSERTAR DetalleDesplazamientoArticulo
CREATE PROC spInsertar_DetalleDesplazamientoArticulo
(	
	@DesAr_id INT,
	@Ar_codigo VARCHAR(13),
	@UbOrigen_id INT,
	@UbDestino_id INT,
	@Articulo_cantidad INT
)
AS
INSERT INTO Detalle_Desplazamiento_Articulo(DesAr_id ,Ar_codigo,UbOrigen_id ,UbDestino_id,Articulo_cantidad)
			VALUES (@DesAr_id ,@Ar_codigo,@UbOrigen_id ,@UbDestino_id,@Articulo_cantidad)
GO

--Consultar DesplazamientoArticulo
CREATE PROC spConsultar_DesplazamientoArticulo
AS
SELECT DesAr.DesAr_id Id_Desplazamiento ,DesAr.DesAr_Fecha Fecha_Desplazamiento
FROM Desplazamiento_Articulo DesAr
GROUP BY DesAr.DesAr_id ,DesAr.DesAr_Fecha
ORDER BY DesAr.DesAr_Fecha DESC
GO


--CONSULTAR UnDesplazamientoArticulo
CREATE PROC spConsultar_Un_DesplazamientoArticulo
(
	@DesAr_id INT
)
AS
SELECT DesAr.DesAr_id Id_Desplazamiento ,DesAr.DesAr_Fecha Fecha_Desplazamiento
FROM Desplazamiento_Articulo DesAr
WHERE DesAr.DesAr_id=@DesAr_id
GROUP BY DesAr.DesAr_id ,DesAr.DesAr_Fecha
GO


--BUSCAR UnDesplazamientoArticulo
CREATE PROCEDURE spBuscar_Desplazamiento_ArticuloPorFecha
(
	@FechaInicial VARCHAR(50),
	@Fechafinal VARCHAR(50)
)
AS
SELECT DesAr.DesAr_id Id_Desplazamiento ,DesAr.DesAr_Fecha Fecha_Desplazamiento
FROM Desplazamiento_Articulo DesAr
WHERE (CONVERT(VARCHAR,DesAr.DesAr_Fecha,112))   BETWEEN @FechaInicial AND @Fechafinal
GROUP BY DesAr.DesAr_id ,DesAr.DesAr_Fecha
ORDER BY DesAr.DesAr_Fecha DESC
GO

----CONSULTAR DetalleDesplazamientoArticulo
CREATE PROC spConsultar_Un_Detalle_DesplazamientoArticulo
(
	@DesAr_id INT
)
AS
SELECT  DetDes.DesAr_id Id_Desplazamiento, DetDes.DetDes_id Id_DetalleDesplazamiento,
		DetDes.Ar_codigo Codigo,Ar.Ar_nombre Articulo,
		DetDes.UbOrigen_id Id_Ubicacion_Origen,Ub.Ub_nombre Ubicacion_Origen,
		DetDes.UbDestino_id Id_Ubicacion_Destino,Ubi.Ub_nombre Ubicacion_Destino,
		DetDes.Articulo_cantidad Cantidad
FROM Detalle_Desplazamiento_Articulo DetDes
INNER JOIN Desplazamiento_Articulo DesLe ON DetDes.DesAr_id=DesLe.DesAr_id
INNER JOIN Articulo Ar ON DetDes.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON DetDes.UbOrigen_id=Ub.Ub_id
INNER JOIN Ubicacion Ubi ON DetDes.UbDestino_id=Ubi.Ub_id
WHERE DetDes.DesAr_id=@DesAr_id
GO


----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES AjusteArticulo/DetalleAjusteArticulo**--

--INSERTAR AjusteArticulo
CREATE PROC spInsertar_AjusteArticulo
(
	@AjuAr_Fecha DATE,
	@Us_id INT
)
AS
INSERT INTO Ajuste_Articulo(AjuAr_Fecha,Us_id) VALUES (@AjuAr_Fecha,@Us_id)
--Obtengo Código Siguiente
SELECT MAX (AjuAr_id) folio_Ajuste_Articulo FROM Ajuste_Articulo
GO

--INSERTAR DetalleDesplazamientoArticulo
CREATE PROC spInsertar_DetalleAjusteArticulo
(	
	@AjuAr_id INT,
	@Ar_codigo VARCHAR(13),
	@UbOrigen_id INT,
	@Articulo_cantidad INT
)
AS
INSERT INTO Detalle_AjusteArticulo(AjuAr_id ,Ar_codigo,UbOrigen_id ,Articulo_cantidad)
			VALUES (@AjuAr_id ,@Ar_codigo,@UbOrigen_id ,@Articulo_cantidad)
GO

--Consultar AjusteArticulo
CREATE PROC spConsultar_AjusteArticulo
AS
SELECT AjuAr.AjuAr_id Id_Ajuste ,AjuAr.AjuAr_Fecha Fecha_Ajuste,
	   AjuAr.Us_id Id_Usuario,Us.Us_usuario Autorizo
FROM Ajuste_Articulo AjuAr
INNER JOIN Usuario Us ON AjuAr.Us_id=Us.Us_id
GROUP BY AjuAr.AjuAr_id ,AjuAr.AjuAr_Fecha,
		 AjuAr.Us_id,Us.Us_usuario
ORDER BY AjuAr.AjuAr_Fecha DESC
GO


--CONSULTAR UnAjusteArticulo
CREATE PROC spConsultar_Un_AjusteArticulo
(
	@AjuAr_id INT
)
AS
SELECT AjuAr.AjuAr_id Id_Ajuste ,AjuAr.AjuAr_Fecha Fecha_Ajuste,
	   AjuAr.Us_id Id_Usuario,Us.Us_usuario Autorizo
FROM Ajuste_Articulo AjuAr
INNER JOIN Usuario Us ON AjuAr.Us_id=Us.Us_id
WHERE AjuAr.AjuAr_id=@AjuAr_id
GROUP BY AjuAr.AjuAr_id ,AjuAr.AjuAr_Fecha,
		 AjuAr.Us_id,Us.Us_usuario
GO

--BUSCAR UnAjusteArticulo
CREATE PROCEDURE spBuscar_Ajuste_ArticuloPorFecha
(
	@FechaInicial VARCHAR(50),
	@Fechafinal VARCHAR(50)
)
AS
SELECT AjuAr.AjuAr_id Id_Ajuste ,AjuAr.AjuAr_Fecha Fecha_Ajuste,
	   AjuAr.Us_id Id_Usuario,Us.Us_usuario Autorizo
FROM Ajuste_Articulo AjuAr
INNER JOIN Usuario Us ON AjuAr.Us_id=Us.Us_id
WHERE (CONVERT(VARCHAR,AjuAr.AjuAr_Fecha,112)) BETWEEN @FechaInicial AND @Fechafinal
GROUP BY AjuAr.AjuAr_id ,AjuAr.AjuAr_Fecha,
		 AjuAr.Us_id,Us.Us_usuario
ORDER BY AjuAr.AjuAr_Fecha DESC
GO


----CONSULTAR DetalleAjusteArticulo
CREATE PROC spConsultar_Un_Detalle_AjusteArticulo
(
	@AjuAr_id INT
)
AS
SELECT  Detaju.AjuAr_id Id_Ajuste,DetAju.DetAju_id Id_DetalleAjuste,
		DetAju.Ar_codigo Codigo,Ar.Ar_nombre Articulo,
		DetAju.UbOrigen_id Id_Ubicacion_Origen,Ub.Ub_nombre Ubicacion_Origen,
		DetAju.Articulo_cantidad Cantidad
FROM Detalle_AjusteArticulo DetAju
INNER JOIN Ajuste_Articulo AjuAr ON Detaju.AjuAr_id=AjuAr.AjuAr_id
INNER JOIN Articulo Ar ON DetAju.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON DetAju.UbOrigen_id=Ub.Ub_id
WHERE DetAju.AjuAr_id=@AjuAr_id
GO


----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES ExistenciasLentes**--

--CONSULTAR Existencia total por Lentes
CREATE PROC sp_Consultar_ExistenciaTotal_Un_Lentes
(
	@textobuscar VARCHAR(50)
)
AS
SELECT Len_Exis.Le_codigo Codigo,Le.Le_nombre Lentes,
	   SUM(Len_Exis.LeE_Existencia) Existencia_Total
FROM Lentes_Existencia Len_Exis
INNER JOIN Lentes Le ON Len_Exis.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON Len_Exis.Ub_id=Ub.Ub_id
WHERE Len_Exis.Le_codigo like '%'+ @textobuscar + '%' OR Le.Le_nombre like '%'+ @textobuscar + '%'
GROUP BY Len_Exis.Le_codigo,Le.Le_nombre
GO

--CONSULTAR Existencia total Lentes
CREATE PROC sp_Consultar_ExistenciaTotal_Lentes
AS
SELECT Len_Exis.Le_codigo Codigo,Le.Le_nombre Lentes,
	   SUM(Len_Exis.LeE_Existencia) Existencia_Total
FROM Lentes_Existencia Len_Exis
INNER JOIN Lentes Le ON Len_Exis.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON Len_Exis.Ub_id=Ub.Ub_id
GROUP BY Len_Exis.Le_codigo,Le.Le_nombre
GO


--CONSULTAR Exsitencia en todas las Ubicaciones Lentes
CREATE PROC sp_Consultar_Existencia_TodasUbicaciones_Lentes
AS
SELECT Len_Exis.Ub_id id_Ubicacion, Ub.Ub_nombre Ubicacion,
	   Len_Exis.Le_codigo Codigo,Le.Le_nombre Lentes,
	   Len_Exis.LeE_Existencia Stock,
	   Len_Exis.LeE_UltimaFechaActualizacion UltimaFechaActualizado,
	    Len_Exis.LeE_UltimaHoraActualizacion UltimaHoraActualizado
FROM Lentes_Existencia Len_Exis
INNER JOIN Lentes Le ON Len_Exis.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON Len_Exis.Ub_id=Ub.Ub_id
ORDER BY Ub.Ub_nombre
GO


--CONSULTAR Existencia por Ubicacion lentes
CREATE PROC sp_Consultar_ExistenciaPorUbicacion_Lentes
(
	@textobuscar VARCHAR(50)
)
AS
SELECT Len_Exis.Ub_id, Ub.Ub_nombre Ubicacion,
	   Len_Exis.Le_codigo Codigo,Le.Le_nombre Lentes,
	   Len_Exis.LeE_Existencia Stock,
	   Len_Exis.LeE_UltimaFechaActualizacion UltimaFechaActualizado,
	   Len_Exis.LeE_UltimaHoraActualizacion UltimaHoraActualizado
FROM Lentes_Existencia Len_Exis
INNER JOIN Lentes Le ON Len_Exis.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON Len_Exis.Ub_id=Ub.Ub_id
WHERE Ub.Ub_nombre like '%'+ @textobuscar + '%' 
ORDER BY Ub.Ub_nombre
GO

--CONSULTAR Existencia por Lentes y Ubicación
CREATE PROC sp_ConsultarStockLentesPorCodigo_Ubicacion
(
	@Ub_id INT,
	@Le_codigo VARCHAR(10)
)
AS
SELECT Len_Exis.LeE_Existencia StockActual
FROM Lentes_Existencia Len_Exis
INNER JOIN Lentes Le ON Len_Exis.Le_codigo=Le.Le_codigo
INNER JOIN Ubicacion Ub ON Ub.Ub_id =Len_Exis.Ub_id
WHERE Ub.Ub_id=@Ub_id AND Le.Le_codigo=@Le_codigo
GO

----------------------------------------------------------------------------------------------------------------------------------------------
									--**STORED PROCEDURES ExistenciasArticulo**--

--CONSULTAR Existencia total por Articulo
CREATE PROC sp_Consultar_ExistenciaTotal_Un_Articulo
(
	@textobuscar VARCHAR(50)
)
AS
SELECT Ar_Exis.Ar_codigo Codigo,Ar.Ar_nombre Articulo,
	   SUM(Ar_Exis.ArE_Existencia) Existencia_Total
FROM Articulo_Existencia Ar_Exis
INNER JOIN Articulo Ar ON Ar_Exis.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON Ar_Exis.Ub_id=Ub.Ub_id
WHERE Ar_Exis.Ar_codigo like '%'+ @textobuscar + '%' OR Ar.Ar_nombre LIKE '%'+ @textobuscar + '%'
GROUP BY Ar_Exis.Ar_codigo,Ar.Ar_nombre
GO

--CONSULTAR Existencia total Articulo
CREATE PROC sp_Consultar_ExistenciaTotal_Articulos
AS
SELECT Ar_Exis.Ar_codigo Codigo,Ar.Ar_nombre Articulo,
	   SUM(Ar_Exis.ArE_Existencia) Existencia_Total
FROM Articulo_Existencia Ar_Exis
INNER JOIN Articulo Ar ON Ar_Exis.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON Ar_Exis.Ub_id=Ub.Ub_id
GROUP BY Ar_Exis.Ar_codigo,Ar.Ar_nombre
GO


--CONSULTAR Exsitencia en todas las Ubicaciones Articulo
CREATE PROC sp_Consultar_Existencia_TodasUbicaciones_Articulo
AS
SELECT Ar_Exis.Ub_id id_Ubicacion, Ub.Ub_nombre Ubicacion,
	   Ar_Exis.Ar_codigo Codigo,Ar.Ar_nombre Articulo,
	   Ar_Exis.ArE_Existencia Stock,
	   Ar_Exis.ArE_UltimaFechaActualizacion UltimaFechaActualizado,
	   Ar_Exis.ArE_UltimaHoraActualizacion UltimaHoraActualizado
FROM Articulo_Existencia Ar_Exis
INNER JOIN Articulo Ar ON Ar_Exis.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON Ar_Exis.Ub_id=Ub.Ub_id
ORDER BY Ub.Ub_nombre
GO


--CONSULTAR Existencia por Ubicacion 
CREATE PROC sp_Consultar_ExistenciaPorUbicacion_Articulo
(
	@textobuscar VARCHAR(50)
)
AS
SELECT Ar_Exis.Ub_id, Ub.Ub_nombre Ubicacion,
	   Ar_Exis.Ar_codigo Codigo,Ar.Ar_nombre Articulo,
	   Ar_Exis.ArE_Existencia Stock,
	   Ar_Exis.ArE_UltimaFechaActualizacion UltimaFechaActualizado,
	   Ar_Exis.ArE_UltimaHoraActualizacion UltimaHoraActualizado
FROM Articulo_Existencia Ar_Exis
INNER JOIN Articulo Ar ON Ar_Exis.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON Ar_Exis.Ub_id=Ub.Ub_id
WHERE Ub.Ub_nombre like '%'+ @textobuscar + '%' 
ORDER BY Ub.Ub_nombre
GO

--CONSULTAR Existencia por Articulo y Ubicación
CREATE PROC sp_ConsultarStockArticuloPorCodigo_Ubicacion
(
	@Ub_id INT,
	@Ar_codigo VARCHAR(13)
)
AS
SELECT Ar_Exis.ArE_Existencia StockActual
FROM Articulo_Existencia Ar_Exis
INNER JOIN Articulo Ar ON Ar_Exis.Ar_codigo=Ar.Ar_codigo
INNER JOIN Ubicacion Ub ON Ub.Ub_id =Ar_Exis.Ub_id
WHERE Ub.Ub_id=@Ub_id AND Ar.Ar_codigo=@Ar_codigo
GO


---------------------------------------------------------------------------------------------------------------------------------------------------------

									--**STORED PROCEDURES Login**--
--CONSULTAR Login
CREATE PROC spLogin
(
	@Us_usuario VARCHAR(12),
	@Us_clave VARCHAR(8)
)
AS
SELECT Us_id Id_Usuario,Us_usuario Usuario,Us_clave Clave,
	   Us.RolU_id Id_Rol ,RolU.RolU_nombre Rol,us.estatus Estatus
FROM Usuario Us
INNER JOIN Rol_Usuario RolU ON Us.RolU_id=RolU.RolU_id
WHERE Us_usuario=@Us_usuario AND Us_clave= @Us_clave COLLATE SQL_LATIN1_GENERAL_CP1_CS_AS
GO
---------------------------------------------------------**TRIGGERS LENTES**--------------------------------------------------------------------------------------

												--**TRIGGER InsercionEntradaLents**--
CREATE TRIGGER tg_InsercionEntradaLentes
ON  Detalle_Entrada_Lentes
AFTER INSERT
AS 
--SI EXISTEN LOS LENTES EN LA UBICACION
		IF EXISTS (SELECT *
				   FROM Lentes_Existencia LenExis
				   INNER JOIN INSERTED I ON I.Le_codigo = LenExis.Le_codigo
				   INNER JOIN Ubicacion Ubi ON I.UbDestino_id=Ubi.Ub_id
				   WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbDestino_id)
				  
		BEGIN
			SET NOCOUNT ON
		--ACTUALIZA LA CANTIDAD
			UPDATE Lentes_Existencia SET LeE_Existencia= LeE_Existencia+ I.Lentes_cantidad,
										 Ub_id = I.UbDestino_id,
										 LeE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 LeE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Lentes_Existencia LenExis
			INNER JOIN Inserted I ON LenExis.Le_codigo=I.Le_codigo
			INNER JOIN Ubicacion Ubi ON I.UbDestino_id=Ubi.Ub_id
			WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbDestino_id 
		END

		--SI NO EXISTEN LOS LENTES EN LA UBICACION
		ELSE
		BEGIN
		SET NOCOUNT ON
		DECLARE @Le_codigo VARCHAR(10)
		DECLARE @Ub_id INT
		DECLARE @Le_Existencia INT 
		DECLARE @LeE_UltimaFechaActualizacion VARCHAR(10)
		DECLARE @LeE_UltimaHoraActualizacion VARCHAR(5)

		SELECT @Le_codigo=Le_codigo FROM INSERTED
		SELECT @Ub_id=UbDestino_id FROM INSERTED
		SELECT @Le_Existencia=Lentes_cantidad FROM INSERTED
		SELECT @LeE_UltimaFechaActualizacion=CONVERT(VARCHAR,GETDATE(),103)
		SELECT @LeE_UltimaHoraActualizacion=CONVERT(VARCHAR(5),GETDATE(),108)

		--SE HACE UNA INSERCION NUEVA 
		INSERT INTO Lentes_Existencia (Le_codigo,Ub_id,LeE_Existencia,LeE_UltimaFechaActualizacion,LeE_UltimaHoraActualizacion)
		VALUES (@Le_codigo,@Ub_id,@Le_Existencia,@LeE_UltimaFechaActualizacion,@LeE_UltimaHoraActualizacion)
		END
GO

												--**TRIGGER InsercionSalida Lentes**--
CREATE TRIGGER tg_InsercionSalidaLentes
ON  Detalle_Salida_Lentes
AFTER INSERT
AS 
--SI EXISTEN LOS LENTES EN LA UBICACION
		IF EXISTS (SELECT *
				   FROM Lentes_Existencia LenExis
				   INNER JOIN INSERTED I ON I.Le_codigo = LenExis.Le_codigo
				   INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
				   WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbOrigen_id)
				  
		BEGIN
			SET NOCOUNT ON
		--ACTUALIZA LA CANTIDAD
			UPDATE Lentes_Existencia SET LeE_Existencia= LeE_Existencia- I.Lentes_cantidad,
										 Ub_id = I.UbOrigen_id,
										 LeE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 LeE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Lentes_Existencia LenExis
			INNER JOIN Inserted I ON LenExis.Le_codigo=I.Le_codigo
			INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
			WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbOrigen_id 
		END

		--SI NO EXISTEN LOS LENTES EN LA UBICACION
		ELSE
		BEGIN
		SET NOCOUNT ON
		DECLARE @Le_codigo VARCHAR(10)
		DECLARE @Ub_id INT
		DECLARE @Le_Existencia INT 
		DECLARE @LeE_UltimaFechaActualizacion VARCHAR(10)
		DECLARE @LeE_UltimaHoraActualizacion VARCHAR(5)

		SELECT @Le_codigo=Le_codigo FROM INSERTED
		SELECT @Ub_id=UbOrigen_id FROM INSERTED
		SELECT @Le_Existencia=Lentes_cantidad FROM INSERTED
		SELECT @LeE_UltimaFechaActualizacion=CONVERT(VARCHAR,GETDATE(),103)
		SELECT @LeE_UltimaHoraActualizacion=CONVERT(VARCHAR(5),GETDATE(),108)

		--SE HACE UNA INSERCION NUEVA 
		INSERT INTO Lentes_Existencia (Le_codigo,Ub_id,LeE_Existencia,LeE_UltimaFechaActualizacion,LeE_UltimaHoraActualizacion)
		VALUES (@Le_codigo,@Ub_id,@Le_Existencia,@LeE_UltimaFechaActualizacion,@LeE_UltimaHoraActualizacion)
		END
GO

												--**TRIGGER InsercionDesplazamiento Lentes**--
CREATE TRIGGER tg_InsercionDesplazamientoLentes
ON  Detalle_Desplazamiento_Lentes
AFTER INSERT
AS 
		--SI EXISTEN LOS LENTES EN LA UBICACION DE DESTINO
		IF EXISTS (SELECT *
				   FROM Lentes_Existencia LenExis
				   INNER JOIN INSERTED I ON I.Le_codigo = LenExis.Le_codigo
				   INNER JOIN Ubicacion Ubi ON I.UbDestino_id=Ubi.Ub_id
				   WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbDestino_id)
  
		BEGIN
			SET NOCOUNT ON
		--ACTUALIZA LA CANTIDAD DEL ORIGEN (DE DONDE FUE LA SALIDA DE LENTES)
			UPDATE Lentes_Existencia SET LeE_Existencia= LeE_Existencia- I.Lentes_cantidad,
										 Ub_id = I.UbOrigen_id,
										 LeE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 LeE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Lentes_Existencia LenExis
			INNER JOIN Inserted I ON LenExis.Le_codigo=I.Le_codigo
			INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
			WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbOrigen_id 

					--ACTUALIZA LA CANTIDAD DEL DESTINO (A DONDE ENTRAN LOS LENTES)
			UPDATE Lentes_Existencia SET LeE_Existencia= LeE_Existencia+ I.Lentes_cantidad,
										 Ub_id = I.UbDestino_id,
										 LeE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 LeE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Lentes_Existencia LenExis
			INNER JOIN Inserted I ON LenExis.Le_codigo=I.Le_codigo
			INNER JOIN Ubicacion Ubi ON I.UbDestino_id=Ubi.Ub_id
			WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbDestino_id 
		END

		--SI NO EXISTEN LOS LENTES EN LA UBICACION
		ELSE
		BEGIN
		SET NOCOUNT ON
				--ACTUALIZA LA CANTIDAD DEL ORIGEN (DE DONDE FUE LA SALIDA DE LENTES)
			UPDATE Lentes_Existencia SET LeE_Existencia= LeE_Existencia- I.Lentes_cantidad,
										 Ub_id = I.UbOrigen_id,
										 LeE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 LeE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Lentes_Existencia LenExis
			INNER JOIN Inserted I ON LenExis.Le_codigo=I.Le_codigo
			INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
			WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbOrigen_id

		DECLARE @Le_codigo VARCHAR(10)
		DECLARE @Ub_id INT
		DECLARE @Le_Existencia INT 
		DECLARE @LeE_UltimaFechaActualizacion VARCHAR(10) 
		DECLARE @LeE_UltimaHoraActualizacion VARCHAR(5)

		SELECT @Le_codigo=Le_codigo FROM INSERTED
		SELECT @Ub_id=UbDestino_id FROM INSERTED
		SELECT @Le_Existencia=Lentes_cantidad FROM INSERTED
		SELECT @LeE_UltimaFechaActualizacion=CONVERT(VARCHAR,GETDATE(),103)
		SELECT @LeE_UltimaHoraActualizacion=CONVERT(VARCHAR(5),GETDATE(),108)

		--SE HACE UNA INSERCION NUEVA 
		INSERT INTO Lentes_Existencia (Le_codigo,Ub_id,LeE_Existencia,LeE_UltimaFechaActualizacion,LeE_UltimaHoraActualizacion)
		VALUES (@Le_codigo,@Ub_id,@Le_Existencia,@LeE_UltimaFechaActualizacion,@LeE_UltimaHoraActualizacion)
		END

GO

												--**TRIGGER InsercionAjuste Lentes**--
CREATE TRIGGER tg_InsercionAjusteLentes
ON  Detalle_AjusteLentes
AFTER INSERT
AS 
--SI EXISTEN LOS LENTES EN LA UBICACION
		IF EXISTS (SELECT *
				   FROM Lentes_Existencia LenExis
				   INNER JOIN INSERTED I ON I.Le_codigo = LenExis.Le_codigo
				   INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
				   WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbOrigen_id)
				  
		BEGIN
			SET NOCOUNT ON
		--ACTUALIZA LA CANTIDAD
			UPDATE Lentes_Existencia SET LeE_Existencia= LeE_Existencia+ I.Lentes_cantidad,
										 Ub_id = I.UbOrigen_id,
										 LeE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 LeE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Lentes_Existencia LenExis
			INNER JOIN Inserted I ON LenExis.Le_codigo=I.Le_codigo
			INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
			WHERE LenExis.Le_codigo= I.Le_codigo AND LenExis.Ub_id=I.UbOrigen_id 
		END

		--SI NO EXISTEN LOS LENTES EN LA UBICACION
		ELSE
		BEGIN
		SET NOCOUNT ON
		DECLARE @Le_codigo VARCHAR(10)
		DECLARE @Ub_id INT
		DECLARE @Le_Existencia INT 
		DECLARE @LeE_UltimaFechaActualizacion VARCHAR(10)
		DECLARE @LeE_UltimaHoraActualizacion VARCHAR(5)

		SELECT @Le_codigo=Le_codigo FROM INSERTED
		SELECT @Ub_id=UbOrigen_id FROM INSERTED
		SELECT @Le_Existencia=Lentes_cantidad FROM INSERTED
		SELECT @LeE_UltimaFechaActualizacion=CONVERT(VARCHAR,GETDATE(),103)
		SELECT @LeE_UltimaHoraActualizacion=CONVERT(VARCHAR(5),GETDATE(),108)

		--SE HACE UNA INSERCION NUEVA 
		INSERT INTO Lentes_Existencia (Le_codigo,Ub_id,LeE_Existencia,LeE_UltimaFechaActualizacion,LeE_UltimaHoraActualizacion)
		VALUES (@Le_codigo,@Ub_id,@Le_Existencia,@LeE_UltimaFechaActualizacion,@LeE_UltimaHoraActualizacion)
		END
GO

---------------------------------------------------------**TRIGGERS ARTICULOS**--------------------------------------------------------------------------------------

												--**TRIGGER InsercionEntradaArticulos**--
CREATE TRIGGER tg_InsercionEntradaArticulo
ON  Detalle_Entrada_Articulo
AFTER INSERT
AS 
--SI EXISTEN EL ARTICULO EN LA UBICACION
		IF EXISTS (SELECT *
				   FROM Articulo_Existencia ArExis
				   INNER JOIN INSERTED I ON I.Ar_codigo = ArExis.Ar_codigo
				   INNER JOIN Ubicacion Ubi ON I.UbDestino_id=Ubi.Ub_id
				   WHERE ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbDestino_id)
				  
		BEGIN
			SET NOCOUNT ON
		--ACTUALIZA LA CANTIDAD
			UPDATE Articulo_Existencia SET ArE_Existencia= ArE_Existencia+ I.Articulo_cantidad,
										 Ub_id = I.UbDestino_id,
										 ArE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 ArE_UltimaHoraActualizacion = CONVERT(VARCHAR(5),GETDATE(),108)

			FROM Articulo_Existencia ArExis
			INNER JOIN Inserted I ON ArExis.Ar_codigo=I.Ar_codigo
			INNER JOIN Ubicacion Ubi ON I.UbDestino_id=Ubi.Ub_id
			WHERE  ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbDestino_id 
		END

		--SI NO EXISTEN EL ARTICULO EN LA UBICACION
		ELSE
		BEGIN
		SET NOCOUNT ON
		DECLARE @Ar_codigo VARCHAR(13)
		DECLARE @Ub_id INT
		DECLARE @Ar_Existencia INT 
		DECLARE @ArE_UltimaFechaActualizacion VARCHAR(10)
		DECLARE @ArE_UltimaHoraActualizacion VARCHAR (5)

		SELECT @Ar_codigo=Ar_codigo FROM INSERTED
		SELECT @Ub_id=UbDestino_id FROM INSERTED
		SELECT @Ar_Existencia=Articulo_cantidad FROM INSERTED
		SELECT @ArE_UltimaFechaActualizacion=CONVERT(VARCHAR,GETDATE(),103)
		SELECT @ArE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)

		--SE HACE UNA INSERCION NUEVA 
		INSERT INTO Articulo_Existencia (Ar_codigo,Ub_id,ArE_Existencia,ArE_UltimaFechaActualizacion,ArE_UltimaHoraActualizacion)
		VALUES (@Ar_codigo,@Ub_id,@Ar_Existencia,@ArE_UltimaFechaActualizacion,@ArE_UltimaHoraActualizacion)
		END
GO

												--**TRIGGER InsercionSalida Articulo**--
CREATE TRIGGER tg_InsercionSalidaArticulo
ON  Detalle_Salida_Articulo
AFTER INSERT
AS 
--SI EXISTEN EL ARTICULO EN LA UBICACION
		IF EXISTS (SELECT *
				   FROM Articulo_Existencia ArExis
				   INNER JOIN INSERTED I ON I.Ar_codigo = ArExis.Ar_codigo
				   INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
				   WHERE ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbOrigen_id)
				  
		BEGIN
			SET NOCOUNT ON
		--ACTUALIZA LA CANTIDAD
			UPDATE Articulo_Existencia SET ArE_Existencia= ArE_Existencia- I.Articulo_cantidad,
										 Ub_id = I.UbOrigen_id,
										 ArE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 ArE_UltimaHoraActualizacion = CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Articulo_Existencia ArExis
			INNER JOIN Inserted I ON ArExis.Ar_codigo=I.Ar_codigo
			INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
			WHERE  ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbOrigen_id 
		END

		--SI NO EXISTEN EL ARTICULO EN LA UBICACION
		ELSE
		BEGIN
		SET NOCOUNT ON
		DECLARE @Ar_codigo VARCHAR(13)
		DECLARE @Ub_id INT
		DECLARE @Ar_Existencia INT 
		DECLARE @ArE_UltimaFechaActualizacion VARCHAR(10)
		DECLARE @ArE_UltimaHoraActualizacion VARCHAR(5)

		SELECT @Ar_codigo=Ar_codigo FROM INSERTED
		SELECT @Ub_id=UbOrigen_id FROM INSERTED
		SELECT @Ar_Existencia=Articulo_cantidad FROM INSERTED
		SELECT @ArE_UltimaFechaActualizacion=CONVERT(VARCHAR,GETDATE(),103)
		SELECT @ArE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)

		--SE HACE UNA INSERCION NUEVA 
		INSERT INTO Articulo_Existencia (Ar_codigo,Ub_id,ArE_Existencia,ArE_UltimaFechaActualizacion,ArE_UltimaHoraActualizacion)
		VALUES (@Ar_codigo,@Ub_id,@Ar_Existencia,@ArE_UltimaFechaActualizacion,@ArE_UltimaHoraActualizacion)
		END
GO

												--**TRIGGER InsercionDesplazamiento Articulo**--
CREATE TRIGGER tg_InsercionDesplazamientoArticulo
ON  Detalle_Desplazamiento_Articulo
AFTER INSERT
AS 
		--SI EXISTE EL ARTICULO EN LA UBICACION DE DESTINO
		IF EXISTS (SELECT *
				   FROM Articulo_Existencia ArExis
				   INNER JOIN INSERTED I ON I.Ar_codigo = ArExis.Ar_codigo
				   INNER JOIN Ubicacion Ubi ON I.UbDestino_id=Ubi.Ub_id
				   WHERE ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbDestino_id)
  
		BEGIN
			SET NOCOUNT ON
		--ACTUALIZA LA CANTIDAD DEL ORIGEN (DE DONDE FUE LA SALIDA DEL ARTICULO)
			UPDATE Articulo_Existencia SET ArE_Existencia= ArE_Existencia- I.Articulo_cantidad,
										 Ub_id = I.UbOrigen_id,
										 ArE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 ArE_UltimaHoraActualizacion = CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Articulo_Existencia ArExis
			INNER JOIN Inserted I ON ArExis.Ar_codigo=I.Ar_codigo
			INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
			WHERE ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbOrigen_id 

					--ACTUALIZA LA CANTIDAD DEL DESTINO (A DONDE ENTRAN EL ARTICULO)
			UPDATE Articulo_Existencia SET ArE_Existencia= ArE_Existencia+ I.Articulo_cantidad,
										 Ub_id = I.UbDestino_id,
										 ArE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										  ArE_UltimaHoraActualizacion = CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Articulo_Existencia ArExis
			INNER JOIN Inserted I ON ArExis.Ar_codigo=I.Ar_codigo
			INNER JOIN Ubicacion Ubi ON I.UbDestino_id=Ubi.Ub_id
			WHERE ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbDestino_id 
		END

		--SI NO EXISTE EL ARTICULO EN LA UBICACION
		ELSE
		BEGIN
		SET NOCOUNT ON
				--ACTUALIZA LA CANTIDAD DEL ORIGEN (DE DONDE FUE LA SALIDA DEL ARTICULO)
			UPDATE Articulo_Existencia SET ArE_Existencia= ArE_Existencia- I.Articulo_cantidad,
										 Ub_id = I.UbOrigen_id,
										 ArE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										  ArE_UltimaHoraActualizacion = CONVERT(VARCHAR(5),GETDATE(),108)
			FROM Articulo_Existencia ArExis
			INNER JOIN Inserted I ON ArExis.Ar_codigo=I.Ar_codigo
			INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
			WHERE ArExis.Ar_codigo = I.Ar_codigo AND ArExis.Ub_id=I.UbOrigen_id

		DECLARE @Ar_codigo VARCHAR(13)
		DECLARE @Ub_id INT
		DECLARE @Ar_Existencia INT 
		DECLARE @ArE_UltimaFechaActualizacion VARCHAR(10)
		DECLARE @ArE_UltimaHoraActualizacion VARCHAR(5)

		SELECT @Ar_codigo=Ar_codigo FROM INSERTED
		SELECT @Ub_id=UbDestino_id FROM INSERTED
		SELECT @Ar_Existencia=Articulo_cantidad FROM INSERTED
		SELECT @ArE_UltimaFechaActualizacion=CONVERT(VARCHAR,GETDATE(),103)
		SELECT @ArE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)

		--SE HACE UNA INSERCION NUEVA 
		INSERT INTO Articulo_Existencia (Ar_codigo,Ub_id,ArE_Existencia,ArE_UltimaFechaActualizacion,ArE_UltimaHoraActualizacion)
		VALUES (@Ar_codigo,@Ub_id,@Ar_Existencia,@ArE_UltimaFechaActualizacion,@ArE_UltimaHoraActualizacion)
		END

GO



												--**TRIGGER InsercionAjuste Articulo**--
CREATE TRIGGER tg_InsercionAjusteArticulo
ON  Detalle_AjusteArticulo
AFTER INSERT
AS 
--SI EXISTEN EL ARTICULO EN LA UBICACION
		IF EXISTS (SELECT *
				   FROM Articulo_Existencia ArExis
				   INNER JOIN INSERTED I ON I.Ar_codigo = ArExis.Ar_codigo
				   INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
				   WHERE ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbOrigen_id)
				  
		BEGIN
			SET NOCOUNT ON
		--ACTUALIZA LA CANTIDAD
			UPDATE Articulo_Existencia SET ArE_Existencia= ArE_Existencia+ I.Articulo_cantidad,
										 Ub_id = I.UbOrigen_id,
										 ArE_UltimaFechaActualizacion = CONVERT(VARCHAR,GETDATE(),103),
										 ArE_UltimaHoraActualizacion = CONVERT(VARCHAR(5),GETDATE(),108)

			FROM Articulo_Existencia ArExis
			INNER JOIN Inserted I ON ArExis.Ar_codigo=I.Ar_codigo
			INNER JOIN Ubicacion Ubi ON I.UbOrigen_id=Ubi.Ub_id
			WHERE  ArExis.Ar_codigo= I.Ar_codigo AND ArExis.Ub_id=I.UbOrigen_id 
		END

		--SI NO EXISTEN EL ARTICULO EN LA UBICACION
		ELSE
		BEGIN
		SET NOCOUNT ON
		DECLARE @Ar_codigo VARCHAR(13)
		DECLARE @Ub_id INT
		DECLARE @Ar_Existencia INT 
		DECLARE @ArE_UltimaFechaActualizacion VARCHAR(10)
		DECLARE @ArE_UltimaHoraActualizacion VARCHAR (5)

		SELECT @Ar_codigo=Ar_codigo FROM INSERTED
		SELECT @Ub_id=UbOrigen_id FROM INSERTED
		SELECT @Ar_Existencia=Articulo_cantidad FROM INSERTED
		SELECT @ArE_UltimaFechaActualizacion=CONVERT(VARCHAR,GETDATE(),103)
		SELECT @ArE_UltimaHoraActualizacion= CONVERT(VARCHAR(5),GETDATE(),108)

		--SE HACE UNA INSERCION NUEVA 
		INSERT INTO Articulo_Existencia (Ar_codigo,Ub_id,ArE_Existencia,ArE_UltimaFechaActualizacion,ArE_UltimaHoraActualizacion)
		VALUES (@Ar_codigo,@Ub_id,@Ar_Existencia,@ArE_UltimaFechaActualizacion,@ArE_UltimaHoraActualizacion)
		END
GO