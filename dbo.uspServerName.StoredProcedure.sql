USE [ADS1115]
GO
/****** Object:  StoredProcedure [dbo].[uspServerName]    Script Date: 03/21/2016 05:50:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************************
 	Name:		uspServerName
 	Created By: Rogers Green Jr.
 	Date:		January 5, 2015
 	
 	Purpose: This store procedure will determine whether the database is a test database,
           production database, or development database  
 		1. If there is the @@SERVERNAME identifies as 'SQL501\Internal' it will return TEST
 		2. If there is the @@SERVERNAME identifies as 'SQL101\Internal' it will return ''
		3. If there anything else identifies it will return 'DEVELOPMENT'
 
 ***************************************************************************************/
CREATE PROCEDURE [dbo].[uspServerName]

AS
SET NOCOUNT ON
BEGIN
	SELECT @@SERVERNAME AS DatabaseName, ServerType = 
		CASE @@SERVERNAME 
			WHEN 'SQL501\Internal' THEN 'TEST'
			WHEN 'SQL101\Internal' THEN ''
			ELSE 'DEVELOPMENT'
		END
END
GO
