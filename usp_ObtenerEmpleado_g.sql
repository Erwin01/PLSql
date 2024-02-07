USE [capacitacion]
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerEmpleado_g]    Script Date: 13/12/2017 8:35:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerEmpleado_g]
@NumeroDocumento int

AS
BEGIN

	SELECT * FROM
	[dbo].[dbo.empleado] E
	WHERE E.NumeroDocumento = @NumeroDocumento
	
END