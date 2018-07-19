USE [MEKA]
GO
/****** Object:  Table [dbo].[HLEDGER]    Script Date: 04/12/2017 11:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HLEDGER_old](
	[LED_CompanyCode] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LED_Cabang] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LED_TranNo] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LED_TranDate] [datetime] NULL,
	[LED_TranReff] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LED_TranDescription] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LED_Indicator] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LED_PostAccount] [char](9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LED_Amount] [float] NOT NULL,
	[LED_TransID] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LED_PostDate] [datetime] NULL,
	[LED_PostTime] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LED_PostUser] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LED_FiscalMonth] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LED_FiscalYear] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LEDGER_old] PRIMARY KEY CLUSTERED 
(
	[LED_TranNo] ASC,
	[LED_Indicator] ASC,
	[LED_PostAccount] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [SECONDARY]
) ON [SECONDARY]

GO
SET ANSI_PADDING OFF