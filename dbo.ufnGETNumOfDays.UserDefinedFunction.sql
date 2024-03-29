USE [ADS1115]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGETNumOfDays]    Script Date: 03/21/2016 05:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************************
 	Name:		ufnGETNumOfDays
 	Created By: Rogers Green Jr.
 	Date:		January 5, 2015
 	
 	Purpose: This function will determine if the is a discharge date.  
 		1. If there is a discharge date then it will return the number of days using the
 		discharge date - starting date.
 		2. If there is not a discharge date then it will return the number of days using 
 		the	current date - starting date.  
 
 ***************************************************************************************/

CREATE FUNCTION [dbo].[ufnGETNumOfDays]
(
	@DischargeDate datetime,
	@SessionDate datetime 
)
RETURNS int
AS
BEGIN
	DECLARE @Days int

	SELECT @Days = CASE ISDATE(@DischargeDate)
		WHEN 0 THEN DATEDIFF(DD,@SessionDate,GetDate())
		WHEN 1 THEN DATEDIFF(DD,@SessionDate,@DischargeDate) 
	END

	RETURN @Days
END
GO
