USE [ADS1115]
GO
/****** Object:  Table [dbo].[ClientProfile]    Script Date: 03/21/2016 05:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientProfile](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[CMBHSID] [int] NULL,
	[CMHCID] [int] NULL,
	[ProfileDate] [date] NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[Gender] [int] NULL,
	[SSN] [int] NULL,
	[DOB] [datetime] NULL,
	[CityOfBirth] [varchar](50) NULL,
	[Language] [int] NULL,
	[MaritalStatus] [int] NULL,
	[CustodialStatus] [int] NULL,
	[Race] [int] NULL,
	[Ethnicity] [int] NULL,
	[IsAmIndian] [bit] NOT NULL,
	[IsAsian] [bit] NOT NULL,
	[IsAfricanAm] [bit] NOT NULL,
	[IsPacificIslander] [bit] NOT NULL,
	[IsCaucasian] [bit] NOT NULL,
	[FamilyIncome] [int] NULL,
	[FamilySize] [int] NULL,
	[Notes] [varchar](500) NULL,
	[Clinician] [int] NULL,
	[PeerSS] [int] NULL,
	[WaiverStatus] [int] NOT NULL,
	[Clinic] [int] NULL,
	[ActiveClinician] [bit] NOT NULL,
	[ClientCriteriaDate] [date] NULL,
	[SUDSClient] [bit] NOT NULL,
	[DetoxClient] [bit] NOT NULL,
	[RaceRefused] [bit] NOT NULL,
	[ClientDischargeDate] [date] NULL,
	[DetoxAPA] [bit] NOT NULL,
	[Quadrant] [int] NULL,
	[SUDSType] [int] NULL,
	[DetoxType] [int] NULL,
	[ClinicianName] [varchar](50) NULL,
	[PeerSSName] [varchar](50) NULL,
	[ActivePSS] [bit] NOT NULL,
	[SF36BLDate] [date] NULL,
	[Evaluator_FKID] [int] NULL,
 CONSTRAINT [PK_ClientProfile] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_ClientProfile] UNIQUE NONCLUSTERED 
(
	[CMBHSID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'CMBHS ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'CMBHSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'CMHC ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'CMHCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Profile Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'ProfileDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'SUDSType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'SUDSType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'SUDSType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'DetoxType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'DetoxType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClientProfile', @level2type=N'COLUMN',@level2name=N'DetoxType'
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_IsAmIndian]  DEFAULT ((0)) FOR [IsAmIndian]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_IsAsian]  DEFAULT ((0)) FOR [IsAsian]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_IsAfricanAm]  DEFAULT ((0)) FOR [IsAfricanAm]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_IsPacificIslander]  DEFAULT ((0)) FOR [IsPacificIslander]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_IsCaucasian]  DEFAULT ((0)) FOR [IsCaucasian]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_[WaiverStatus]  DEFAULT ((3)) FOR [WaiverStatus]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_Active]  DEFAULT ((0)) FOR [ActiveClinician]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_SUDSClient]  DEFAULT ((0)) FOR [SUDSClient]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_DetoxClient]  DEFAULT ((0)) FOR [DetoxClient]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF__ClientPro__RaceR__46E78A0C]  DEFAULT ((0)) FOR [RaceRefused]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_DetoxAPA]  DEFAULT ((0)) FOR [DetoxAPA]
GO
ALTER TABLE [dbo].[ClientProfile] ADD  CONSTRAINT [DF_ClientProfile_ActivePSS]  DEFAULT ((0)) FOR [ActivePSS]
GO
