USE [ADS1115]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGETDischargeDate]    Script Date: 03/21/2016 05:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************************
 	Name:		ufnGETDischargeDate
 	Created By: Rogers Green Jr.
 	Date:		January 6, 2015
 	
 	Purpose: This function will determine the date to return discharge date.  
 		1. If there is a newer record without a discharge date then it will return a null
 		value.
 		2. If there is a newer record with a discharge date then it will return the 
 		newest record.
 		3. If there is a no record then it will return a null value.
 
 ***************************************************************************************/

CREATE FUNCTION [dbo].[ufnGETDischargeDate]
(
	@ClientID int
)
RETURNS datetime
AS
BEGIN
	DECLARE @DischargeDate datetime
	DECLARE @Top datetime
	DECLARE @Bottom datetime
	
	-- Check for number of Clinician if any exists then discharge can 
	-- only occur when ProgramType_ID = 1 and the is a discharge date present
	
	-- Gets the newest date or NULL value if no records exists
	SELECT TOP 1 @Top = DischargeDate 
	FROM Program
	WHERE Client_ID = @ClientID AND ProgramType_ID NOT IN (2,4) 
		ORDER BY DischargeDate ASC 
			
	
	-- Gets the oldest date or NULL values 
	SELECT TOP 1 @Bottom = DischargeDate 	
	FROM Program
	WHERE Client_ID = @ClientID AND ProgramType_ID NOT IN (2,4)
	ORDER BY DischargeDate DESC
	
			
	-- Determine what data to return as the DischargeDate
	SELECT @DischargeDate =
		CASE ISDATE(@Top)
			WHEN 1 THEN @Top
			WHEN 0 THEN ''
		END
		
	-- Checks to see if the first set of numbers is null if it is
	-- then do not procedure to check the second record because an
	-- active Clinician has precedence
	IF @DischargeDate IS NOT NULL
		BEGIN	
			SELECT @DischargeDate =
				CASE 
					WHEN ISDATE(@Bottom) = 1 AND @Bottom > @Top THEN @Bottom										WHEN ISDATE(@Bottom) = 1 AND @Bottom <= @Top THEN @Top
					ELSE @Top
				END
		END

	RETURN CONVERT(nvarchar,@DischargeDate,101)
END
GO
