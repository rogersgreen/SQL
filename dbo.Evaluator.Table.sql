USE [ADS1115]
GO
/****** Object:  Table [dbo].[Evaluator]    Script Date: 03/21/2016 05:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evaluator](
	[EvaluatorPKID] [int] IDENTITY(1,1) NOT NULL,
	[EvaluatorFirstName] [varchar](50) NOT NULL,
	[EvaluatorLastName] [varchar](50) NOT NULL,
	[EvaluatorMiddleName] [varchar](50) NULL,
	[EvaluatorLoginID] [varchar](25) NOT NULL,
	[EvaluatorEID] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EvaluatorPKID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
