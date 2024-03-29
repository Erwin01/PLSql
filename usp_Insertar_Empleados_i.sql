USE [capacitacion]
GO
/****** Object:  StoredProcedure [dbo].[usp_Insertar_Empleados_i]    Script Date: 13/12/2017 10:23:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Insertar_Empleados_i](
	
	@IdEmpleado uniqueidentifier output,
	@Nombre varchar(25),
	@Apellido varchar(25),
	@IdTipoDocumento int, 
	@NumeroDocumento varchar(20),
	@Idpais varchar(20),
	@IdProvincia varchar(20),
	@Direccion varchar(25),
	@Salario money,
	@Telefono varchar(20),
	@Celular varchar(20),
	@CorreoElectronico varchar(25),
	@EstadoCivil varchar(15),
	@Sexo bit,
	@FechaInicial date,
	@FechaFinal date,
	@Activo bit
)
AS
BEGIN

	SET @IdEmpleado = NEWID()

    -- Insert statements for procedure here

	INSERT INTO [dbo].[Empleado]
	(
	
	IdEmpleado,
	Nombre,
	Apellido,
	IdTipoDocumento, 
	NumeroDocumento,
	Idpais,
	IdProvincia,
	Direccion,
	Salario,
	Telefono,
	Celular,
	CorreoElectronico,
	EstadoCivil,
	Sexo,
	FechaInicial,
	FechaFinal,
	Activo
    
	)

OUTPUT INSERTED.IdEmpleado

	VALUES (
	
	@IdEmpleado,
	@Nombre,
	@Apellido,
	@IdTipoDocumento, 
	@NumeroDocumento,
	@Idpais,
	@IdProvincia,
	@Direccion,
	@Salario,
	@Telefono,
	@Celular,
	@CorreoElectronico,
	@EstadoCivil,
	@Sexo,
	@FechaInicial,
	@FechaFinal,
	@Activo
	
)

END