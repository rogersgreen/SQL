USE [ADS1115]
GO
/****** Object:  View [dbo].[vwClientProfileDetox]    Script Date: 03/21/2016 05:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwClientProfileDetox]
AS
SELECT dbo.ClientProfile.ClientID AS Client_ID, dbo.ClientProfile.CMHCID, dbo.ClientProfile.ProfileDate, dbo.ClientProfile.FirstName, dbo.ClientProfile.LastName, 
               dbo.ClientProfile.MiddleName, dbo.ClientProfile.Gender, dbo.ClientProfile.SSN, dbo.ClientProfile.DOB, dbo.ClientProfile.CityOfBirth, dbo.ClientProfile.Language, 
               dbo.ClientProfile.MaritalStatus, dbo.ClientProfile.CustodialStatus, dbo.ClientProfile.Race, dbo.ClientProfile.Ethnicity, dbo.ClientProfile.IsAmIndian, 
               dbo.ClientProfile.IsAsian, dbo.ClientProfile.IsAfricanAm, dbo.ClientProfile.IsPacificIslander, dbo.ClientProfile.IsCaucasian, dbo.ClientProfile.FamilyIncome, 
               dbo.ClientProfile.FamilySize, dbo.ClientProfile.Notes, dbo.ClientProfile.Clinician, dbo.ClientProfile.PeerSS, dbo.ClientProfile.WaiverStatus, dbo.ClientProfile.Clinic, 
               dbo.ClientProfile.ActiveClinician, dbo.ClientProfile.PeerDischargeDate, dbo.ClientProfile.SUDSClient, dbo.ClientProfile.DetoxClient, dbo.ClientProfile.RaceRefused, 
               dbo.ClientProfile.ClinicianDischargeDate, dbo.ClientProfile.DetoxAPA, dbo.ClientProfile.Quadrant, dbo.DetoxType.Type AS [Detox Type], 
               dbo.SUDSType.Type AS [SUDS Type], dbo.ClientProfile.ClinicianName, dbo.ClientProfile.PeerSSName, dbo.ClientProfile.ActivePSS, 
               dbo.ClientProfile.CMBHSID
FROM  dbo.ClientProfile LEFT OUTER JOIN
               dbo.DetoxType ON dbo.ClientProfile.DetoxType = dbo.DetoxType.TypeID LEFT OUTER JOIN
               dbo.SUDSType ON dbo.ClientProfile.SUDSType = dbo.SUDSType.TypeID
WHERE (dbo.ClientProfile.DetoxType = 1 OR
               dbo.ClientProfile.DetoxType = 2 OR
               dbo.ClientProfile.DetoxType = 3 OR
               dbo.ClientProfile.DetoxType = 4)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_AlternateBackThemeColorIndex', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DatasheetForeThemeColorIndex', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DatasheetGridlinesThemeColorIndex', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ClientProfile"
            Begin Extent = 
               Top = 0
               Left = 0
               Bottom = 141
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 35
         End
         Begin Table = "DetoxType"
            Begin Extent = 
               Top = 107
               Left = 317
               Bottom = 212
               Right = 501
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SUDSType"
            Begin Extent = 
               Top = 0
               Left = 317
               Bottom = 105
               Right = 501
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2112
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_FilterOnLoad', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_HideNewField', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'[vwSessionAttendance].[SessionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOnLoad', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ThemeFontIndex', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_TotalsRow', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwClientProfileDetox'
GO
