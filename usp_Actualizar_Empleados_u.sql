USE [capacitacion]
GO
/****** Object:  StoredProcedure [dbo].[usp_Actualizar_Empleados_u]    Script Date: 13/12/2017 3:04:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Actualizar_Empleados_u](
	
	@IdEmpleado uniqueidentifier output,
	@Nombre varchar(50),
	@Apellido varchar(50),
	@IdTipoDocumento int, 
	@NumeroDocumento int,
	@Idpais varchar(50),
	@IdProvincia varchar(50),
	@Direccion varchar(50),
	@Salario money,
	@Telefono varchar(50),
	@Celular varchar(50),
	@CorreoElectronico varchar(50),
	@EstadoCivil varchar(50),
	@Sexo bit,
	@FechaInicial date,
	@FechaFinal date
)
AS
BEGIN

    -- Insert statements for procedure here

	UPDATE [dbo].[dbo.empleado]
	SET

	IdEmpleado = @IdEmpleado,
	Nombre = @Nombre,
	Apellido = @Apellido,
	IdTipoDocumento = @IdTipoDocumento, 
	NumeroDocumento = @NumeroDocumento,
	Idpais = @Idpais,
	IdProvincia = @IdProvincia,
	Direccion = @Direccion,
	Salario = @Salario,
	Telefono = @Telefono,
	Celular = @Celular,
	CorreoElectronico = @CorreoElectronico,
	EstadoCivil = @EstadoCivil,
	Sexo = @Sexo,
	FechaInicial = @FechaInicial,
	FechaFinal = @FechaFinal
	WHERE NumeroDocumento = @NumeroDocumento
	
END