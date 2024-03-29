USE [capacitacion]
GO
/****** Object:  StoredProcedure [dbo].[usp_Buscar_Empleados_s]    Script Date: 11/12/2017 3:26:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Erwin>
-- Create date: <8/12/2017>
-- Description:	<Busca empleados por filtros>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Buscar_Empleados_s](
	

	@IdPais varchar(50)=NULL,
	@IdProvincia varchar(50)=NULL,
	@IdSexo bit=NULL,
	@IdTipoDocumento int=NULL,
	@FechaInicial date=NULL,
	@FechaFinal date=NULL
)
AS
BEGIN

	SELECT * FROM [dbo].[Empleado] as  E
	
	wHERE (@IdPais IS NULL OR E.IdPais = @IdPais)
	
END

--select * from [dbo].[dbo.Empleado]

exec [usp_Buscar_Empleados_s]
