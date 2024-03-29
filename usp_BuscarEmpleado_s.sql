USE [capacitacion]
GO
/****** Object:  StoredProcedure [dbo].[usp_BuscarEmpleado_s]    Script Date: 13/12/2017 9:56:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_BuscarEmpleado_s](
	
	--@IdEmpleado	uniqueidentifier,
	@Nombre	varchar(25) = NULL,
	@Apellido varchar(25) = NULL,
	@IdTipoDocumento int = NULL,
	@NumeroDocumento varchar(20) = NULL,
	@IdPais	varchar(50) = NULL,
	@IdProvincia varchar(50) = NULL,
	@Direccion	varchar(50) = NULL,
	@Salario money = NULL,
	@Telefono varchar(20) = NULL,	
	@Celular varchar(20) = NULL,
	@CorreoElectronico	varchar(25) = NULL,
	@EstadoCivil varchar(15) = NULL,
	@Sexo bit = NULL
	--@FechaInicial	datetime = NULL,
	--@FechaFinal	datetime = NULL,
	--@Activo	bit = NULL

	--@IdPais varchar(50)=NULL,
	--@IdProvincia varchar(50)=NULL,
	--@IdSexo bit=NULL,
	--@IdTipoDocumento int=NULL
	--@FechaInicial date=NULL,
	--@FechaFinal date=NULL

)
AS
BEGIN

	SELECT * FROM [dbo].[Empleado] as E
	
	--@IdPais IS NULL OR E.IdPais = @IdPais
	WHERE ( @Nombre IS NULL OR E.Nombre = @Nombre
	AND @Apellido IS NULL OR E.Apellido = @Apellido
	AND @IdTipoDocumento IS NULL OR E.IdTipoDocumento = @IdTipoDocumento
	AND @NumeroDocumento IS NULL OR E.NumeroDocumento = @NumeroDocumento
	AND @IdPais IS NULL OR E.IdPais = @IdPais
	AND @IdProvincia IS NULL OR E.IdProvincia = @IdProvincia
	AND @Direccion IS NULL OR E.Direccion = @Direccion
	AND @Salario IS NULL OR E.Salario = @Salario
	AND @Telefono IS NULL OR E.Telefono = @Telefono
	AND @Celular IS NULL OR E.Celular = @Celular
	AND @CorreoElectronico IS NULL OR E.CorreoElectronico = @CorreoElectronico
	AND @EstadoCivil IS NULL OR E.EstadoCivil = @EstadoCivil
	AND @Sexo IS NULL OR E.Sexo = @Sexo)
	
END

EXECUTE usp_BuscarEmpleado_s