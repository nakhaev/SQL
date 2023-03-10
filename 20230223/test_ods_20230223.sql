USE [BCIQ_ODS]
GO
/****** Object:  Table [ods].[DocumentInfo_History]    Script Date: 2/23/2023 8:27:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DocumentInfo_History](
	[Code] [int] NOT NULL,
	[JsonText] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[State] [int] NOT NULL,
	[DealEventCode] [int] NULL,
	[DocInputTextCode] [int] NULL,
	[CurrencyCode] [int] NULL,
	[ExchangeRate] [float] NULL,
	[ExchangeDate] [datetime] NULL,
	[AssignedUser] [varchar](60) NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL,
	[LoggedInUser] [varchar](60) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[DocumentInfo]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DocumentInfo](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[JsonText] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[State] [int] NOT NULL,
	[DealEventCode] [int] NULL,
	[DocInputTextCode] [int] NULL,
	[CurrencyCode] [int] NULL,
	[ExchangeRate] [float] NULL,
	[ExchangeDate] [datetime] NULL,
	[AssignedUser] [varchar](60) NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
	[LoggedInUser] [varchar](60) NULL,
 CONSTRAINT [PK_DocumentInfo] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [ods].[DocumentInfo_History])
)
GO
/****** Object:  Table [ods].[Deals_History]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deals_History](
	[Name] [varchar](8000) NOT NULL,
	[Code] [int] NOT NULL,
	[DealID] [decimal](38, 0) NULL,
	[DateAnnounced] [datetime2](7) NULL,
	[DateCompleted] [datetime2](7) NULL,
	[DateTerminated] [datetime2](7) NULL,
	[DateStatus] [datetime2](7) NULL,
	[Status_Code] [int] NOT NULL,
	[Status_Name] [nvarchar](250) NULL,
	[Exclusivity_Code] [int] NOT NULL,
	[Exclusivity_Name] [nvarchar](250) NULL,
	[TerminationReason_Code] [int] NULL,
	[TerminationReason_Name] [nvarchar](250) NULL,
	[Headline] [varchar](8000) NULL,
	[InternalNotes] [nvarchar](2000) NULL,
	[DealValueNotes] [nvarchar](2000) NULL,
	[DealValue] [decimal](38, 4) NULL,
	[OptionExclusivityPayment] [decimal](38, 4) NULL,
	[OptionExercisePayment] [decimal](38, 4) NULL,
	[UpfrontCash] [decimal](38, 4) NULL,
	[UpfrontEquity] [decimal](38, 4) NULL,
	[RDFunding] [decimal](38, 4) NULL,
	[TotalMilestonePayments] [decimal](38, 4) NULL,
	[SalesBasedMilestonePayments] [decimal](38, 4) NULL,
	[NetSalesRoyalty] [decimal](38, 4) NULL,
	[NetSalesRoyalty_Min] [decimal](38, 4) NULL,
	[NetSalesRoyalty_Max] [decimal](38, 4) NULL,
	[ProfitSplit] [decimal](38, 4) NULL,
	[ProfitSplit_Min] [decimal](38, 4) NULL,
	[ProfitSplit_Max] [decimal](38, 4) NULL,
	[ManufacturingSupplyTransPrice] [decimal](38, 4) NULL,
	[UnitBasedReimbursement] [decimal](38, 4) NULL,
	[LoansAndOther] [decimal](38, 4) NULL,
	[OtherPmntNotes] [nvarchar](1000) NULL,
	[OptionNotes] [nvarchar](1000) NULL,
	[UpfrontPmntNotes] [nvarchar](1000) NULL,
	[RDFundingNotes] [nvarchar](1000) NULL,
	[MilestonePmntNotes] [nvarchar](1000) NULL,
	[CommercialPmntNotes] [nvarchar](1000) NULL,
	[StageAtTermination_Code] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[StageAtTermination_Name] [varchar](255) NULL,
	[MinAnnouncedValue] [decimal](38, 4) NULL,
	[RDRegulatoryMilestonePayments] [decimal](38, 4) NULL,
	[Posted] [bit] NULL,
	[MdmDealCode] [int] NULL,
	[ReadyForQa] [bit] NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deals]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deals](
	[Name] [varchar](8000) NOT NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealID] [decimal](38, 0) NULL,
	[DateAnnounced] [datetime2](7) NULL,
	[DateCompleted] [datetime2](7) NULL,
	[DateTerminated] [datetime2](7) NULL,
	[DateStatus] [datetime2](7) NULL,
	[Status_Code] [int] NOT NULL,
	[Status_Name] [nvarchar](250) NULL,
	[Exclusivity_Code] [int] NOT NULL,
	[Exclusivity_Name] [nvarchar](250) NULL,
	[TerminationReason_Code] [int] NULL,
	[TerminationReason_Name] [nvarchar](250) NULL,
	[Headline] [varchar](8000) NULL,
	[InternalNotes] [nvarchar](2000) NULL,
	[DealValueNotes] [nvarchar](2000) NULL,
	[DealValue] [decimal](38, 4) NULL,
	[OptionExclusivityPayment] [decimal](38, 4) NULL,
	[OptionExercisePayment] [decimal](38, 4) NULL,
	[UpfrontCash] [decimal](38, 4) NULL,
	[UpfrontEquity] [decimal](38, 4) NULL,
	[RDFunding] [decimal](38, 4) NULL,
	[TotalMilestonePayments] [decimal](38, 4) NULL,
	[SalesBasedMilestonePayments] [decimal](38, 4) NULL,
	[NetSalesRoyalty] [decimal](38, 4) NULL,
	[NetSalesRoyalty_Min] [decimal](38, 4) NULL,
	[NetSalesRoyalty_Max] [decimal](38, 4) NULL,
	[ProfitSplit] [decimal](38, 4) NULL,
	[ProfitSplit_Min] [decimal](38, 4) NULL,
	[ProfitSplit_Max] [decimal](38, 4) NULL,
	[ManufacturingSupplyTransPrice] [decimal](38, 4) NULL,
	[UnitBasedReimbursement] [decimal](38, 4) NULL,
	[LoansAndOther] [decimal](38, 4) NULL,
	[OtherPmntNotes] [nvarchar](1000) NULL,
	[OptionNotes] [nvarchar](1000) NULL,
	[UpfrontPmntNotes] [nvarchar](1000) NULL,
	[RDFundingNotes] [nvarchar](1000) NULL,
	[MilestonePmntNotes] [nvarchar](1000) NULL,
	[CommercialPmntNotes] [nvarchar](1000) NULL,
	[StageAtTermination_Code] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[StageAtTermination_Name] [varchar](255) NULL,
	[MinAnnouncedValue] [decimal](38, 4) NULL,
	[RDRegulatoryMilestonePayments] [decimal](38, 4) NULL,
	[Posted] [bit] NULL,
	[MdmDealCode] [int] NULL,
	[ReadyForQa] [bit] NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
 CONSTRAINT [PK__Deals1__A25C5AA666EF78EF] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [ods].[Deals_History])
)
GO
/****** Object:  Table [ods].[Pipeline_History]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Pipeline_History](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[PhaseOfDevelopment_Code] [int] NOT NULL,
	[PhaseOfDevelopment_Name] [nvarchar](250) NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Company_Code] [int] NOT NULL,
	[Company_Name] [nvarchar](250) NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[Notes] [nvarchar](max) NULL,
	[IndicationDetailCode] [int] NULL,
	[IsDiscontinued] [bit] NULL,
	[RouteOfAdministration_Code] [int] NULL,
	[RouteOfAdministration_Name] [nvarchar](250) NULL,
	[ProductDetail_Code] [int] NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[ProductDetail_ID] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Qaready] [bit] NULL,
	[SearchReady] [bit] NULL,
	[Posted] [bit] NULL,
	[MdmPipelineCode] [int] NULL,
	[RegulatoryDesignationRegionCode] [int] NULL,
	[DiscontinuedDate] [datetime] NULL,
	[DiscontinuedNotes] [varchar](1000) NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[Pipeline]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Pipeline](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[PhaseOfDevelopment_Code] [int] NOT NULL,
	[PhaseOfDevelopment_Name] [nvarchar](250) NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Company_Code] [int] NOT NULL,
	[Company_Name] [nvarchar](250) NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[Notes] [nvarchar](max) NULL,
	[IndicationDetailCode] [int] NULL,
	[IsDiscontinued] [bit] NULL,
	[RouteOfAdministration_Code] [int] NULL,
	[RouteOfAdministration_Name] [nvarchar](250) NULL,
	[ProductDetail_Code] [int] NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[ProductDetail_ID] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Qaready] [bit] NULL,
	[SearchReady] [bit] NULL,
	[Posted] [bit] NULL,
	[MdmPipelineCode] [int] NULL,
	[RegulatoryDesignationRegionCode] [int] NULL,
	[DiscontinuedDate] [datetime] NULL,
	[DiscontinuedNotes] [varchar](1000) NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
 CONSTRAINT [PK_Pipeline] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [ods].[Pipeline_History])
)
GO
/****** Object:  Table [ods].[Financings_History]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Financings_History](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[FinancingUuid] [nvarchar](40) NULL,
	[ReceivingCompany_Code] [int] NOT NULL,
	[ReceivingCompany_Name] [nvarchar](250) NULL,
	[FinancingType_Code] [int] NOT NULL,
	[FinancingType_Name] [nvarchar](250) NULL,
	[Currency_Code] [int] NOT NULL,
	[Currency_Name] [nvarchar](250) NULL,
	[DateFiled] [datetime2](7) NULL,
	[DateCompleted] [datetime2](7) NULL,
	[AmountRaised] [decimal](18, 2) NULL,
	[SharesProposed] [decimal](18, 2) NULL,
	[PriceRange] [nvarchar](200) NULL,
	[PriceRangeLow] [decimal](18, 2) NULL,
	[PriceRangeHigh] [decimal](18, 2) NULL,
	[FilingPrice] [decimal](18, 2) NULL,
	[SharesSold] [decimal](18, 2) NULL,
	[SharesOutstanding] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 4) NULL,
	[YearEndingPrice] [decimal](18, 2) NULL,
	[CompletedComments] [nvarchar](200) NULL,
	[SharePrice] [decimal](18, 2) NULL,
	[Notes] [nvarchar](4000) NULL,
	[OverAllotment] [nvarchar](200) NULL,
	[PricePrior] [decimal](18, 2) NULL,
	[SharesAfterOffering] [decimal](18, 2) NULL,
	[SharesPriorOffering] [decimal](18, 2) NULL,
	[MarketCap] [decimal](18, 2) NULL,
	[CompletedStatus_Code] [int] NULL,
	[CompletedStatus_Name] [nvarchar](250) NULL,
	[FinancingID] [nvarchar](200) NULL,
	[PhaseAtFinancing_Code] [int] NULL,
	[PhaseAtFinancing_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SharePriceOrigCurrency] [decimal](18, 4) NULL,
	[Updated_At] [datetime2](7) NULL,
	[Source] [varchar](100) NULL,
	[InternalNotes] [nvarchar](max) NULL,
	[PricePerShareOrigCurrency] [decimal](18, 4) NULL,
	[Posted] [bit] NULL,
	[Deleted] [bit] NULL,
	[Qacompleted] [bit] NULL,
	[ReadyForQa] [bit] NULL,
	[PostedFinancingCode] [int] NULL,
	[ProposedAmount] [decimal](18, 0) NULL,
	[Agents] [nvarchar](200) NULL,
	[AmountRaisedOrigCurr] [decimal](18, 2) NULL,
	[ProposedAmountOrigCurr] [decimal](18, 2) NULL,
	[Created_At] [datetime2](7) NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[Financings]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Financings](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[FinancingUuid] [nvarchar](40) NULL,
	[ReceivingCompany_Code] [int] NOT NULL,
	[ReceivingCompany_Name] [nvarchar](250) NULL,
	[FinancingType_Code] [int] NOT NULL,
	[FinancingType_Name] [nvarchar](250) NULL,
	[Currency_Code] [int] NOT NULL,
	[Currency_Name] [nvarchar](250) NULL,
	[DateFiled] [datetime2](7) NULL,
	[DateCompleted] [datetime2](7) NULL,
	[AmountRaised] [decimal](18, 2) NULL,
	[SharesProposed] [decimal](18, 2) NULL,
	[PriceRange] [nvarchar](200) NULL,
	[PriceRangeLow] [decimal](18, 2) NULL,
	[PriceRangeHigh] [decimal](18, 2) NULL,
	[FilingPrice] [decimal](18, 2) NULL,
	[SharesSold] [decimal](18, 2) NULL,
	[SharesOutstanding] [decimal](18, 2) NULL,
	[Rate] [decimal](18, 4) NULL,
	[YearEndingPrice] [decimal](18, 2) NULL,
	[CompletedComments] [nvarchar](200) NULL,
	[SharePrice] [decimal](18, 2) NULL,
	[Notes] [nvarchar](4000) NULL,
	[OverAllotment] [nvarchar](200) NULL,
	[PricePrior] [decimal](18, 2) NULL,
	[SharesAfterOffering] [decimal](18, 2) NULL,
	[SharesPriorOffering] [decimal](18, 2) NULL,
	[MarketCap] [decimal](18, 2) NULL,
	[CompletedStatus_Code] [int] NULL,
	[CompletedStatus_Name] [nvarchar](250) NULL,
	[FinancingID] [nvarchar](200) NULL,
	[PhaseAtFinancing_Code] [int] NULL,
	[PhaseAtFinancing_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SharePriceOrigCurrency] [decimal](18, 4) NULL,
	[Updated_At] [datetime2](7) NULL,
	[Source] [varchar](100) NULL,
	[InternalNotes] [nvarchar](max) NULL,
	[PricePerShareOrigCurrency] [decimal](18, 4) NULL,
	[Posted] [bit] NULL,
	[Deleted] [bit] NULL,
	[Qacompleted] [bit] NULL,
	[ReadyForQa] [bit] NULL,
	[PostedFinancingCode] [int] NULL,
	[ProposedAmount] [decimal](18, 0) NULL,
	[Agents] [nvarchar](200) NULL,
	[AmountRaisedOrigCurr] [decimal](18, 2) NULL,
	[ProposedAmountOrigCurr] [decimal](18, 2) NULL,
	[Created_At] [datetime2](7) NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
 CONSTRAINT [PK_Financings_n] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [ods].[Financings_History])
)
GO
/****** Object:  Table [ods].[AEDIAuditLog]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIAuditLog](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NOT NULL,
	[CompanyCode] [int] NOT NULL,
	[AediPipelineScrapedDataId] [int] NULL,
	[AediIndicationRecordId] [int] NULL,
	[AediPhaseRecordId] [int] NULL,
	[AediProductRecordId] [int] NULL,
	[AediPipelineRecordId] [int] NULL,
	[Metadata] [nvarchar](400) NULL,
	[ActionType] [varchar](255) NULL,
	[TargetType] [varchar](255) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_AEDIAuditLog] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIDocEntityValues]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIDocEntityValues](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[Entity] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIDocMLEntities]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIDocMLEntities](
	[DocMlId] [int] NOT NULL,
	[DocEntityId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIDocMLProcessed]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIDocMLProcessed](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[DocId] [int] NOT NULL,
	[AgentId] [int] NOT NULL,
	[MLOutput] [nvarchar](max) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[DocType] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIDocTypes]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIDocTypes](
	[UId] [bigint] NOT NULL,
	[DocType] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIIndication]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIIndication](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](700) NULL,
 CONSTRAINT [PK__AEDIIndi__C5B196620108B161] PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIIndicationRecord]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIIndicationRecord](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[IndicationId] [int] NOT NULL,
	[ValidationId] [int] NULL,
	[BoundingBoxX] [int] NULL,
	[BoundingBoxY] [int] NULL,
	[BoundingBoxW] [int] NULL,
	[BoundingBoxH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIPhase]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIPhase](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIPhaseRecord]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIPhaseRecord](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[PhaseId] [int] NOT NULL,
	[ValidationId] [int] NULL,
	[BoundingBoxX] [int] NULL,
	[BoundingBoxY] [int] NULL,
	[BoundingBoxW] [int] NULL,
	[BoundingBoxH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIPipelineRecord]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIPipelineRecord](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[PipelineId] [int] NOT NULL,
	[PipelineCode] [int] NULL,
	[IndicationRecordId] [int] NULL,
	[PhaseRecordId] [int] NULL,
	[ProductRecordId] [int] NULL,
	[PipelineRecordState] [int] NOT NULL,
	[LastReviewedBy] [int] NULL,
	[LastReviewedDate] [datetime] NULL,
 CONSTRAINT [PK__AEDIPipe__C5B196626CA464ED] PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIPipelineScrapedData]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIPipelineScrapedData](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [int] NOT NULL,
	[PNGFile] [nvarchar](255) NULL,
	[JSONFile] [nvarchar](255) NULL,
	[HTMLFile] [nvarchar](255) NULL,
	[MLOutput] [nvarchar](max) NULL,
	[ScrapedDatetime] [datetime] NULL,
	[RunId] [varchar](255) NULL,
	[PipelineUrlId] [int] NULL,
	[PipelineScrapedState] [nvarchar](255) NULL,
	[PipelineScrapedStateUpdatedAt] [datetime] NULL,
	[PipelineScrapedStateUpdatedBy] [int] NULL,
	[Score] [float] NULL,
	[ScoreVersion] [varchar](255) NULL,
	[StrategyId] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[ErrorMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK__AEDIPipe__C5B19662D04F9885] PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIProduct]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIProduct](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIProductRecord]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIProductRecord](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ValidationId] [int] NULL,
	[BoundingBoxX] [int] NULL,
	[BoundingBoxY] [int] NULL,
	[BoundingBoxW] [int] NULL,
	[BoundingBoxH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIScraperStrategies]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIScraperStrategies](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[StrategyName] [varchar](255) NOT NULL,
	[ScraperStrategiesCreateAt] [datetime] NULL,
 CONSTRAINT [PK_AEDIScraperStrategies] PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIValidationEntityLog]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIValidationEntityLog](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[ValidationId] [int] NOT NULL,
	[DocEntityId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIValidationLog]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIValidationLog](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[ValidationTypeId] [int] NOT NULL,
	[ValidatorId] [int] NOT NULL,
	[TimeStamp] [datetime] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AEDIValidationTypes]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AEDIValidationTypes](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Agents]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Agents](
	[AgentID] [int] IDENTITY(1,1) NOT NULL,
	[IsMachine] [bit] NULL,
	[RunId] [varchar](150) NULL,
	[ModelName] [varchar](150) NULL,
	[ModelVersion] [varchar](150) NULL,
	[Email] [varchar](255) NULL,
	[HumanName] [varchar](255) NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[AgentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AssetClass]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AssetClass](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[AssetType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[AssetType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[AssetClass_Code] [int] NOT NULL,
	[AssetClass_Name] [nvarchar](250) NULL,
	[AssetTypeID] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[BCBiotechHub]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[BCBiotechHub](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[BCBiotechHubID] [nvarchar](200) NULL,
	[Country_Code] [int] NULL,
	[Country_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[BCBiotechHub_To_State]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[BCBiotechHub_To_State](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[BCBiotechHub_Code] [int] NOT NULL,
	[BCBiotechHub_Name] [nvarchar](250) NULL,
	[State_Code] [int] NULL,
	[State_Name] [nvarchar](250) NULL,
	[Country_Code] [int] NULL,
	[Country_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[StateNameAbbr] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[BusinessClass]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[BusinessClass](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CategoryTypeID] [nvarchar](250) NULL,
	[SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[BusinessType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[BusinessType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CategoryID] [nvarchar](250) NULL,
	[BusinessClass_Code] [int] NOT NULL,
	[BusinessClass_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[City]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[City](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[State_Code] [int] NULL,
	[State_Name] [nvarchar](250) NULL,
	[BiotechHub_Code] [int] NULL,
	[BiotechHub_Name] [nvarchar](250) NULL,
	[SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[ClinicalPhase]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[ClinicalPhase](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[ClinicalPhaseID] [nvarchar](200) NULL,
	[FinancialsPhaseID] [nvarchar](100) NULL,
	[SubCategory_Code] [int] NOT NULL,
	[SubCategory_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IsLeadProdStatusIncluded_Code] [int] NULL,
	[IsLeadProdStatusIncluded_Name] [nvarchar](250) NULL,
	[IsPhaseOfDevIncluded_Code] [int] NULL,
	[IsPhaseOfDevIncluded_Name] [nvarchar](250) NULL,
	[LeadProdStatusRank] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[ClinicalPhaseCategory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[ClinicalPhaseCategory](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[ClinicalPhaseSubCategory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[ClinicalPhaseSubCategory](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[Category_Code] [int] NOT NULL,
	[Category_Name] [nvarchar](250) NULL,
	[SortOrder] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CommercialPaymentStructure]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CommercialPaymentStructure](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CommercialPaymentStructureID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Company]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Company](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[Legacy_CompanyID] [int] NULL,
	[Legacy_UnderwriterID] [int] NULL,
	[Legacy_InvestorID] [int] NULL,
	[CompanyNameAbbr] [nvarchar](200) NULL,
	[CompanyType_Code] [int] NULL,
	[CompanyType_Name] [nvarchar](250) NULL,
	[CompanyCategory_Code] [int] NULL,
	[CompanyCategory_Name] [nvarchar](250) NULL,
	[Territory] [nvarchar](1000) NULL,
	[CompanyURL] [nvarchar](1000) NULL,
	[AccountNumber] [nvarchar](200) NULL,
	[OwnershipStatus_Code] [int] NULL,
	[OwnershipStatus_Name] [nvarchar](250) NULL,
	[YearFounded] [int] NULL,
	[BusinessCategory_Code] [int] NULL,
	[BusinessCategory_Name] [nvarchar](250) NULL,
	[Country_Code] [int] NULL,
	[Country_Name] [nvarchar](250) NULL,
	[Sector_Code] [int] NULL,
	[Sector_Name] [nvarchar](250) NULL,
	[Industry_Code] [int] NULL,
	[Industry_Name] [nvarchar](250) NULL,
	[ParentCompany_Code] [int] NULL,
	[ParentCompany_Name] [nvarchar](250) NULL,
	[CIK] [int] NULL,
	[IsApproved_Code] [int] NULL,
	[IsApproved_Name] [nvarchar](250) NULL,
	[IsActive_Code] [int] NULL,
	[IsActive_Name] [nvarchar](250) NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[City] [nvarchar](200) NULL,
	[State] [nvarchar](200) NULL,
	[ZipCode] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Fax] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](200) NULL,
	[PrimaryContact] [nvarchar](200) NULL,
	[CompanyEventType_Code] [int] NULL,
	[CompanyEventType_Name] [nvarchar](250) NULL,
	[EffectiveStartDate] [date] NULL,
	[EffectiveEndDate] [date] NULL,
	[IsCurrent_Code] [int] NULL,
	[IsCurrent_Name] [nvarchar](250) NULL,
	[Legacy_DateCreated] [date] NULL,
	[BCBiotechHub_Code] [int] NULL,
	[BCBiotechHub_Name] [nvarchar](250) NULL,
	[LeadProductStatus_Code] [int] NULL,
	[LeadProductStatus_Name] [nvarchar](250) NULL,
	[LeadProductStatusDate] [datetime2](7) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IsInvestor_Code] [int] NULL,
	[IsUnderWriter_Code] [int] NULL,
	[IsInvestor_Name] [varchar](255) NULL,
	[IsUnderWriter_Name] [varchar](255) NULL,
	[SearchBy] [varchar](512) NULL,
	[InternalNotes] [nvarchar](2000) NULL,
	[CrunchbaseID] [nvarchar](100) NULL,
	[TierId] [int] NULL,
	[Source] [varchar](100) NULL,
	[AutoInclusion] [bit] NULL,
	[ManualInclusion] [bit] NULL,
	[ManualExclusion] [bit] NULL,
	[Archived] [bit] NULL,
	[DeletionStatus] [nvarchar](100) NULL,
	[DeleteRequestUser] [varchar](60) NULL,
	[DeleteRequestManager] [varchar](60) NULL,
	[DeleteRequestDate] [datetime] NULL,
	[CurrentCompanyCode] [int] NULL,
	[ExcludeCrunchbaseFinancings] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[DoingBusinessAs] [nvarchar](1000) NULL,
	[OldCode] [int] NULL,
	[Qaready] [bit] NULL,
	[SearchReady] [bit] NULL,
	[Posted] [bit] NULL,
	[MdmCompCode] [int] NULL,
 CONSTRAINT [PK__Company1__A25C5AA6B0435053] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[Company_to_BusinessType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Company_to_BusinessType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[BusinessType_Code] [int] NULL,
	[BusinessType_Name] [nvarchar](250) NULL,
	[Company_Code] [int] NULL,
	[Company_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Company_to_BusinessType] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Company_to_CompanyGroup]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Company_to_CompanyGroup](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CompanyGroup_Code] [int] NOT NULL,
	[CompanyGroup_Name] [nvarchar](250) NULL,
	[Company_Code] [int] NULL,
	[Company_Name] [nvarchar](250) NULL,
	[DateAddedToGroup] [datetime2](7) NULL,
	[DateRemovedFromGroup] [datetime2](7) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Company_to_CompanyGroup] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyCategory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyCategory](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_CompanyCategory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyDealRole]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyDealRole](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CompanyDealRoleID] [nvarchar](200) NULL,
	[SortOrder] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyEventsQA]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyEventsQA](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[NewSourceCompany1Code] [int] NULL,
	[NewSourceCompany2Code] [int] NULL,
	[SourceCompany1Code] [int] NULL,
	[SourceCompany2Code] [int] NULL,
	[NewCompanyName] [nvarchar](255) NULL,
	[NewCompanyNameAbbr] [nvarchar](255) NULL,
	[NewCompanyCode] [int] NULL,
	[EventType] [nvarchar](255) NULL,
	[EffectiveStartDate] [date] NULL,
	[EventInformation] [nvarchar](255) NULL,
 CONSTRAINT [PK_CompanyEventsQA] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyEventType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyEventType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyGroup]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyGroup](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyMarketCap]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyMarketCap](
	[Code] [int] NOT NULL,
	[Company_Code] [int] NULL,
	[CompanyID] [int] NULL,
	[StockTicker_Code] [int] NULL,
	[Currency_Code] [int] NULL,
	[DataDate] [datetime] NOT NULL,
	[MarketCap] [float] NULL,
	[Outcome] [nchar](100) NULL,
	[Message] [nchar](500) NULL,
	[TickerSymbol] [nvarchar](50) NULL,
	[Currency] [nvarchar](50) NULL,
	[ExchangeRate] [float] NULL,
	[LastClose] [float] NULL,
	[SharesOutstandingCurrent] [float] NULL,
	[MarketCapCurrent] [float] NULL,
 CONSTRAINT [PK_CompanyMarketCap_1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyNameHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyNameHistory](
	[NameChangeID] [int] IDENTITY(1,1) NOT NULL,
	[PreviousCompanyCode] [int] NOT NULL,
	[PreviousCompanyName] [nvarchar](250) NOT NULL,
	[EventType] [nvarchar](250) NULL,
	[IsActive_Name] [nvarchar](250) NULL,
	[IsCurrent_Name] [nvarchar](250) NULL,
	[CurrentCompanyCode] [int] NOT NULL,
	[CurrentCompanyName] [nvarchar](250) NOT NULL,
	[PreviousEventType] [nvarchar](250) NULL,
	[Note] [nvarchar](1000) NULL,
	[EventDate] [datetime] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
 CONSTRAINT [PK_CompanyNameHistory] PRIMARY KEY CLUSTERED 
(
	[NameChangeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyOwnershipStatus]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyOwnershipStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyReviewHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyReviewHistory](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](250) NULL,
	[CompanyCode] [int] NOT NULL,
	[DateReviewed] [datetime] NOT NULL,
	[Source] [varchar](10) NULL,
	[ReviewingUser] [varchar](60) NULL,
	[Notes] [nvarchar](1000) NULL,
 CONSTRAINT [PK_CompanyReviewHistory] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CompanyUrlHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CompanyUrlHistory](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_CompanyUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_URLSearchBy] UNIQUE NONCLUSTERED 
(
	[URLSearchBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Country]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Country](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[SubRegion_Code] [int] NOT NULL,
	[SubRegion_Name] [nvarchar](250) NULL,
	[SortOrder] [nvarchar](250) NULL,
	[RegulatoryRegion_Code] [nvarchar](250) NULL,
	[RegulatoryRegion_Name] [nvarchar](250) NULL,
	[RegulatoryRegion_SortOrder] [nvarchar](250) NULL,
	[SalesTerritory_Code] [nvarchar](250) NULL,
	[SalesTerritory_Name] [nvarchar](250) NULL,
	[SalesTerritory_SortOrder] [nvarchar](250) NULL,
	[LicensingTerritory_Code] [nvarchar](250) NULL,
	[LicensingTerritory_Name] [nvarchar](250) NULL,
	[LicensingTerritory_SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Currency]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Currency](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[CurrencyAbbr] [nvarchar](200) NULL,
	[UniversalCurrencyAbbr] [nvarchar](200) NULL,
	[BriefCurrencyAbbr] [nvarchar](200) NULL,
	[CurrencyID] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[BCStyle] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[CurrencyExchangeRates]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[CurrencyExchangeRates](
	[DateID] [int] NOT NULL,
	[UniversalAbbreviation] [varchar](3) NOT NULL,
	[CurrencyID] [int] NULL,
	[ExchangeRate] [float] NULL,
	[AsOfDate] [datetime] NULL,
	[IsMostCurrent] [bit] NULL,
	[DownloadDate] [datetime] NULL,
	[Currency_Code] [int] NULL,
 CONSTRAINT [PK_CurrencyExchangeRates] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[UniversalAbbreviation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DailyIndices]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DailyIndices](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[TickerSymbol] [nvarchar](50) NULL,
	[MarketCode] [nvarchar](50) NULL,
	[TradeDate] [datetime] NULL,
	[LastSharePrice] [money] NULL,
	[OpenSharePrice] [money] NULL,
	[HighSharePrice] [money] NULL,
	[LowSharePrice] [money] NULL,
	[Volume] [int] NULL,
	[LastClose] [money] NULL,
	[ChangeFromOpen] [float] NULL,
	[PercentChangeFromOpen] [float] NULL,
	[ChangeFromLastClose] [float] NULL,
	[PercentChangeFromLastClose] [float] NULL,
	[SplitRatio] [float] NULL,
	[CumulativeCashDividend] [money] NULL,
	[CummulativeStockDividend] [money] NULL,
	[CumulativeStockDividendRatio] [float] NULL,
	[Currency] [nvarchar](50) NULL,
	[AdjustmentMethodUsed] [nvarchar](255) NULL,
	[DataConfidence] [nvarchar](50) NULL,
	[LastPriceSource] [nvarchar](50) NULL,
	[LastPriceType] [nvarchar](50) NULL,
	[EndOfDayPrice] [money] NULL,
	[EndOfDayPriceDate] [datetime] NULL,
	[EndOfDayPriceMethodUsed] [nvarchar](50) NULL,
	[EndOfDayPriceTiming] [nvarchar](50) NULL,
	[EndOfDayPriceSource] [nvarchar](50) NULL,
	[ExchangeClose] [float] NULL,
	[Valuation] [float] NULL,
	[ExchangeCloseDate] [datetime] NULL,
	[ValuationDate] [datetime] NULL,
	[Outcome] [nvarchar](255) NULL,
	[Message] [nvarchar](255) NULL,
	[RequestDate] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_CommercialPaymentStructure]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_CommercialPaymentStructure](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealCode] [int] NULL,
	[DealAsset_Code] [int] NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[CommercialPaymentStructure_Code] [int] NOT NULL,
	[CommercialPaymentStructure_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[CommercialPmntNotes] [nvarchar](1000) NULL,
 CONSTRAINT [PK__Deal_to___A25C5AA6329A619A] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_Company]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_Company](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Deal_Code] [int] NOT NULL,
	[Deal_Name] [nvarchar](250) NULL,
	[Company_Code] [int] NOT NULL,
	[Company_Name] [nvarchar](250) NULL,
	[CompanyRole_Code] [int] NOT NULL,
	[CompanyRole_Name] [nvarchar](250) NULL,
	[CompanyRank] [int] NULL,
	[CompanyHQCountryID] [decimal](38, 0) NULL,
	[CompanyTypeID] [decimal](38, 0) NULL,
	[Responsibilities] [varchar](4000) NULL,
	[DatePrior] [datetime2](3) NULL,
	[StockPricePrior] [decimal](38, 2) NULL,
	[StockPricePriorUSD] [decimal](38, 2) NULL,
	[StockValue] [decimal](38, 2) NULL,
	[CashValue] [decimal](38, 2) NULL,
	[SwapRate] [decimal](38, 2) NULL,
	[SharesIssued] [decimal](38, 0) NULL,
	[SharesOutstanding] [decimal](38, 0) NULL,
	[SharesOutstandingDate] [datetime2](3) NULL,
	[MarketValue] [decimal](38, 2) NULL,
	[MarketValueDate] [datetime2](3) NULL,
	[ExchangeRate] [decimal](38, 2) NULL,
	[CurrencyID] [decimal](38, 0) NULL,
	[OwnershipID] [decimal](38, 0) NULL,
	[ExchangeID1] [decimal](38, 0) NULL,
	[ExchangeID2] [decimal](38, 0) NULL,
	[Ticker1] [decimal](38, 2) NULL,
	[Ticker2] [decimal](38, 2) NULL,
	[PctOwnership] [decimal](38, 2) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_Geography]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_Geography](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealAsset_Code] [int] NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[Country_Code] [int] NULL,
	[Country_Name] [nvarchar](250) NULL,
	[SubRegion_Code] [int] NULL,
	[SubRegion_Name] [nvarchar](250) NULL,
	[Region_Code] [int] NULL,
	[Region_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_MechanismOfAction]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_MechanismOfAction](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealAsset_Code] [int] NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[MechanismOfAction_Code] [int] NULL,
	[MechanismOfAction_Name] [nvarchar](250) NULL,
	[Rank] [smallint] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_MolecularTarget]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_MolecularTarget](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealAsset_Code] [int] NOT NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[MolecularTarget_Code] [int] NOT NULL,
	[MolecularTarget_Name] [nvarchar](250) NULL,
	[Rank] [smallint] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_PartnershipScope]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_PartnershipScope](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealAsset_Code] [int] NOT NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[PartnershipScope_Code] [int] NOT NULL,
	[PartnershipScope_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_Product]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_Product](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealAsset_Code] [int] NOT NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[Product_Code] [int] NULL,
	[Product_Name] [nvarchar](250) NULL,
	[IsDiscontinued_Code] [int] NOT NULL,
	[IsDiscontinued_Name] [nvarchar](250) NULL,
	[IncludeInAsset_Code] [int] NOT NULL,
	[IncludeInAsset_Name] [nvarchar](250) NULL,
	[WasAtSigning_Code] [int] NULL,
	[WasAtSigning_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_StandardIndication]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_StandardIndication](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealAsset_Code] [int] NOT NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[StandardIndication_Code] [int] NOT NULL,
	[StandardIndication_Name] [nvarchar](250) NULL,
	[StandardIndicationRank] [smallint] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Deal_to_TherapeuticModality]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Deal_to_TherapeuticModality](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealAsset_Code] [int] NOT NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[TherapeuticModality_Code] [int] NOT NULL,
	[TherapeuticModality_Name] [nvarchar](250) NULL,
	[Rank] [smallint] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealAsset_to_Company]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealAsset_to_Company](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[DealAsset_Code] [int] NOT NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[Company_Code] [int] NOT NULL,
	[Company_Name] [nvarchar](250) NULL,
	[CompanyDealRole_Code] [int] NOT NULL,
	[CompanyDealRole_Name] [nvarchar](250) NULL,
	[Responsibilities] [varchar](4000) NOT NULL,
	[CompanyRank] [int] NULL,
	[MarketCap] [decimal](38, 0) NULL,
	[MarketCapDate] [datetime] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DealAsse__A25C5AA6671BB0FC] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealAsset_to_DiseaseCategory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealAsset_to_DiseaseCategory](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[DealAssetCode] [int] NULL,
	[DiseaseCategoryCode] [int] NULL,
	[LoggedInUser] [varchar](60) NULL,
 CONSTRAINT [PK_DealAsset_To_DiseaseCategory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealAssets]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealAssets](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Deal_Code] [int] NOT NULL,
	[Deal_Name] [nvarchar](250) NULL,
	[DealID] [decimal](38, 0) NULL,
	[AssetID] [decimal](38, 0) NULL,
	[AssetType_Code] [int] NOT NULL,
	[AssetType_Name] [nvarchar](250) NULL,
	[DealType_Code] [int] NOT NULL,
	[DealType_Name] [nvarchar](250) NULL,
	[MaxProductStatus_Code] [int] NULL,
	[MaxProductStatus_Name] [nvarchar](250) NULL,
	[RareOrphanIntent_Code] [int] NULL,
	[RareOrphanIntent_Name] [nvarchar](250) NULL,
	[MAAttitude_Code] [int] NULL,
	[MAAttitude_Name] [nvarchar](250) NULL,
	[DrugDevelopmentScope_Code] [int] NULL,
	[DrugDevelopmentScope_Name] [nvarchar](250) NULL,
	[MarketScale_Code] [int] NULL,
	[MarketScale_Name] [nvarchar](250) NULL,
	[TrialStatus_Code] [int] NULL,
	[TrialStatus_Name] [nvarchar](250) NULL,
	[AssetValue] [decimal](38, 4) NULL,
	[OptionExclusivityPayment] [decimal](38, 4) NULL,
	[OptionExercisePayment] [decimal](38, 4) NULL,
	[UpfrontCash] [decimal](38, 4) NULL,
	[UpfrontEquity] [decimal](38, 4) NULL,
	[RDFunding] [decimal](38, 4) NULL,
	[TotalMilestonePayements] [decimal](38, 4) NULL,
	[RDRegulatoryMilestonePayments] [decimal](38, 4) NULL,
	[SalesBasedMilestonePayments] [decimal](38, 4) NULL,
	[NetSalesRoyalty] [decimal](38, 4) NULL,
	[NetSalesRoyalty_Min] [decimal](38, 4) NULL,
	[NetSalesRoyalty_Max] [decimal](38, 4) NULL,
	[ProfitSplit] [decimal](38, 4) NULL,
	[ProfitSplit_Min] [decimal](38, 4) NULL,
	[ProfitSplit_Max] [decimal](38, 4) NULL,
	[ManufacturingSupplyTransPrice] [decimal](38, 4) NULL,
	[UnitBasedReimbursement] [decimal](38, 4) NULL,
	[LoansAndOther] [decimal](38, 4) NULL,
	[FinalSharePricePaid] [decimal](38, 4) NULL,
	[SharePricePremium1Day] [decimal](38, 4) NULL,
	[SharePricePremium5Day] [decimal](38, 4) NULL,
	[SharePricePremium30Day] [decimal](38, 4) NULL,
	[MinAnnouncedValue] [decimal](38, 4) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[HasUndisclosedTerritories] [bit] NOT NULL,
	[UpFrontPmntNotes] [nvarchar](1000) NULL,
	[RDFundingNotes] [nvarchar](1000) NULL,
	[MilestonePmntNotes] [nvarchar](1000) NULL,
	[OptionNotes] [nvarchar](1000) NULL,
	[OtherPymntNotes] [nvarchar](1000) NULL,
	[DealValueNotes] [nvarchar](2000) NULL,
 CONSTRAINT [PK__DealAsse__A25C5AA6E8130EDC] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealClass]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealClass](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealClassID] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealDocuments]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealDocuments](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Deal_Code] [int] NOT NULL,
	[Deal_Name] [nvarchar](255) NOT NULL,
	[DealID] [int] NULL,
	[DocumentID] [int] NULL,
	[DocumentType_Code] [int] NOT NULL,
	[DocumentType_Name] [nvarchar](255) NOT NULL,
	[DealEventCode] [int] NULL,
	[DocumentBlob] [image] NULL,
	[FileName] [varchar](255) NULL,
	[DocumentDate] [datetime] NULL,
	[DocumentSource] [nvarchar](500) NULL,
	[Notes] [varchar](255) NULL,
	[CreatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[FileURL] [nvarchar](512) NULL,
 CONSTRAINT [PK__DealDocu__A25C5AA6DBF818C8] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealDocumentText]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealDocumentText](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](8000) NULL,
	[Document_URL] [nvarchar](512) NOT NULL,
	[Document_Text] [nvarchar](max) NULL,
	[DealDocument_Code] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealEvent]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealEvent](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[EventType_Code] [int] NOT NULL,
	[EventType_Name] [nvarchar](250) NULL,
	[Deal_Code] [int] NOT NULL,
	[Deal_Name] [nvarchar](255) NULL,
	[DealID] [int] NULL,
	[EventID] [int] NULL,
	[EventDescription_Name] [nvarchar](max) NULL,
	[EventDate] [date] NULL,
	[PublicationDate] [date] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[DealStory] [nvarchar](2000) NULL,
 CONSTRAINT [PK__DealEven__A25C5AA6F3E4AD09] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealEventClassfier]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealEventClassfier](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DealEventClassfier] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealEventType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealEventType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[EventTypeID] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealEventType_to_Classifier]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealEventType_to_Classifier](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NULL,
	[EventTypeID] [bigint] NULL,
	[DealEventClassifierCode] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealExclusivity]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealExclusivity](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealExclusivityID] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealStatus]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealStatusID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealTerminationReason]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealTerminationReason](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealTerminationReasonID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DealType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DealType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealClass_Code] [int] NOT NULL,
	[DealClass_Name] [nvarchar](250) NULL,
	[SortOrder] [int] NULL,
	[DealTypeID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DealType__A25C5AA6F117E3C0] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DiseaseCategory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DiseaseCategory](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseCategoryID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[QAReady] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
 CONSTRAINT [PK_DiseaseCategory_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DiseaseCategory_BU_02_21_2023]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DiseaseCategory_BU_02_21_2023](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseCategoryID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[QAReady] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
	[MdmDCCode] [int] NULL,
 CONSTRAINT [PK_DiseaseCategory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DiseaseCategorySynonym]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DiseaseCategorySynonym](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseCategoryCode] [int] NOT NULL,
	[DiseaseCategoryName] [nvarchar](250) NOT NULL,
	[Synonym] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](500) NULL,
	[MdmDCSCode] [int] NULL,
 CONSTRAINT [PK_DiseaseCategorySynonym_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DiseaseCategoryUrlHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DiseaseCategoryUrlHistory](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseCategoryCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_DiseaseCategoryUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_DCH_URLSearchBy] UNIQUE NONCLUSTERED 
(
	[URLSearchBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DocInputText]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DocInputText](
	[Code] [int] NOT NULL,
	[OrigDoc_ID] [int] NULL,
	[Name] [nvarchar](512) NULL,
	[Document_URL] [nvarchar](2100) NULL,
	[Document_Text] [nvarchar](max) NULL,
	[Timestamp_Created] [datetime] NULL,
	[Timestamp_Changed] [datetime] NULL,
	[DocumentCategory] [nvarchar](255) NULL,
	[New_Flag] [int] NOT NULL,
	[PublicationDate_From] [datetime] NULL,
	[PublicationDate_To] [datetime] NULL,
	[DocInsertDate] [datetime2](3) NULL,
	[InputSource_code] [int] NULL,
	[Companies] [nvarchar](255) NULL,
	[NewsLinks] [nvarchar](4000) NULL,
	[DocumentType] [nvarchar](255) NULL,
	[DocumentFormat] [nvarchar](255) NULL,
	[NewsContent] [ntext] NULL,
	[NewsComments] [ntext] NULL,
	[NewsLinksParsed] [ntext] NULL,
	[Batch_ID] [nvarchar](255) NULL,
	[Source] [nvarchar](10) NULL,
	[Source_Code] [int] NOT NULL,
	[DateAnnounced] [datetime] NULL,
	[CompanyReload] [bit] NOT NULL,
 CONSTRAINT [PK__DocInput] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[DocMenuText]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DocMenuText](
	[Code] [int] NOT NULL,
	[OrigDoc_ID] [int] NULL,
	[Name] [nvarchar](512) NULL,
	[Document_URL] [nvarchar](2100) NULL,
	[Document_Text] [nvarchar](max) NULL,
	[Timestamp_Created] [datetime] NULL,
	[Timestamp_Changed] [datetime] NULL,
	[DocumentCategory] [nvarchar](255) NULL,
	[Deleted_DateTime] [datetime] NULL,
	[Deleted_Comment] [nvarchar](255) NULL,
	[IsNew] [bit] NOT NULL,
	[PublicationDate_From] [datetime] NULL,
	[PublicationDate_To] [datetime] NULL,
	[DocInsertDate] [datetime2](3) NULL,
	[InputSource_code] [int] NULL,
	[Companies] [nvarchar](255) NULL,
	[NewsLinks] [nvarchar](4000) NULL,
	[DocumentType] [nvarchar](255) NULL,
	[DocumentFormat] [nvarchar](255) NULL,
	[NewsContent] [ntext] NULL,
	[NewsComments] [ntext] NULL,
	[NewsLinksParsed] [ntext] NULL,
	[Batch_ID] [nvarchar](255) NULL,
	[Source] [nchar](10) NULL,
	[Source_Code] [int] NOT NULL,
	[DateAnnounced] [datetime] NULL,
	[To_Be_Reviewed] [bit] NOT NULL,
	[EditorialNote] [nvarchar](max) NULL,
	[Reviewed] [bit] NOT NULL,
	[IsManualUpload] [bit] NOT NULL,
	[TextProcessingStatusUrl] [nvarchar](2100) NULL,
	[AssignedUser] [nvarchar](200) NULL,
	[DealDocProcessingStatusUrl] [nvarchar](2100) NULL,
	[Document_PDF_URL] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[DocumentType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DocumentType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DocumentTypeAbbr] [varchar](3) NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[DrugDevelopmentScope]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[DrugDevelopmentScope](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DrugDevelopmentScopeID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Earnings]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Earnings](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[EarningsID] [decimal](18, 0) NULL,
	[Company_Code] [int] NULL,
	[Company_Name] [nvarchar](250) NULL,
	[FiscalPeriod_Code] [int] NULL,
	[FiscalPeriod_Name] [nvarchar](250) NULL,
	[FiscalYear] [decimal](18, 0) NULL,
	[Currency_Code] [int] NULL,
	[Currency_Name] [nvarchar](250) NULL,
	[FiscalPeriodEndDate] [datetime2](7) NULL,
	[DateEarningsFiled] [datetime2](7) NULL,
	[IsAmended_Code] [int] NULL,
	[IsAmended_Name] [nvarchar](250) NULL,
	[DocumentType] [nvarchar](30) NULL,
	[SharesOutstanding] [decimal](18, 0) NULL,
	[Cash] [decimal](18, 0) NULL,
	[TotalCash] [decimal](18, 0) NULL,
	[ShortTermInvestments] [decimal](18, 0) NULL,
	[ShortTermInvestmentsOther] [decimal](18, 0) NULL,
	[ProductSales] [decimal](18, 0) NULL,
	[ServiceSales] [decimal](18, 0) NULL,
	[SalesTotal] [decimal](18, 0) NULL,
	[GrantRevenue] [decimal](18, 0) NULL,
	[LicenseRevenue] [decimal](18, 0) NULL,
	[RoyaltyRevenue] [decimal](18, 0) NULL,
	[TotalRevenue] [decimal](18, 0) NULL,
	[ResearchAndDevelopment] [decimal](18, 0) NULL,
	[SellingGeneralAndAdministrative] [decimal](18, 0) NULL,
	[OperatingIncomeLoss] [decimal](18, 0) NULL,
	[IncomeFromContinuingOperations] [decimal](18, 0) NULL,
	[Earnings] [decimal](18, 0) NULL,
	[EarningsPerShare] [decimal](18, 2) NULL,
	[DilutedEarningsPerShare] [decimal](18, 2) NULL,
	[SharesAverageBasic] [decimal](18, 0) NULL,
	[SharesAverageDiluted] [decimal](18, 0) NULL,
	[MarketCap] [decimal](18, 0) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Exchange] [varchar](50) NULL,
	[Ticker] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[EntityType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[EntityType](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_EntityType] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[EventStatus]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[EventStatus](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[EventStatus] [nvarchar](50) NOT NULL,
	[EventGroup] [nvarchar](50) NOT NULL,
	[UseInReg] [bit] NOT NULL,
	[UseInClinS] [bit] NOT NULL,
	[UseInClinR] [bit] NOT NULL,
	[UseInMilestone] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[EventType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[EventType](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [nvarchar](50) NOT NULL,
	[EventGroup] [nvarchar](50) NOT NULL,
	[UseInReg] [bit] NOT NULL,
	[UseInClinS] [bit] NOT NULL,
	[UseInClinR] [bit] NOT NULL,
	[UseInDQ] [bit] NOT NULL,
	[IsMilestoneEvent] [bit] NOT NULL,
	[IsNonMilestoneEvent] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Financing_to_Financier]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Financing_to_Financier](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Financing_Code] [int] NOT NULL,
	[Financing_Name] [nvarchar](250) NULL,
	[Company_Code] [int] NULL,
	[Company_Name] [nvarchar](250) NULL,
	[Rank] [smallint] NULL,
	[Role_Code] [int] NULL,
	[Role_Name] [nvarchar](250) NULL,
	[FinancingID] [decimal](18, 0) NULL,
	[InvestorID] [decimal](18, 0) NULL,
	[UnderwriterID] [decimal](18, 0) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[FinancingCompletedStatus]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[FinancingCompletedStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[FinancingRole]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[FinancingRole](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[FinancingType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[FinancingType](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[SortOrder] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[FinancingTypeSubCategory_Name] [nvarchar](250) NOT NULL,
	[FinancingTypeSubCategory_Code] [int] NOT NULL,
	[FinancingTypeID] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[FinancingTypeCategory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[FinancingTypeCategory](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] NOT NULL,
	[SortOrder] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[FinancingTypeSubCategory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[FinancingTypeSubCategory](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] NOT NULL,
	[SortOrder] [int] NULL,
	[FinancingTypeCategory_Name] [nvarchar](250) NOT NULL,
	[FinancingTypeCategory_Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[FiscalPeriod]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[FiscalPeriod](
	[Code] [int] NOT NULL,
	[FiscalPeriodID] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[HotTopic]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[HotTopic](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateActive] [datetime] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](250) NULL,
	[Posted] [bit] NULL,
	[Qaready] [bit] NULL,
 CONSTRAINT [PK_HotTopic] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[HotTopic_to_Company]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[HotTopic_to_Company](
	[HotTopic_Code] [int] NOT NULL,
	[Company_Code] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[DateRemoved] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[HotTopic_to_Indication]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[HotTopic_to_Indication](
	[HotTopic_Code] [int] NOT NULL,
	[StandardIndication_Code] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[DateRemoved] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[HotTopic_to_Product]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[HotTopic_to_Product](
	[HotTopic_Code] [int] NOT NULL,
	[Product_Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[DateRemoved] [datetime] NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[HotTopic_to_Target]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[HotTopic_to_Target](
	[HotTopic_Code] [int] NOT NULL,
	[MolecularTarget_Code] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[DateRemoved] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[HumanAgent]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[HumanAgent](
	[HumanAgentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[TenantId] [int] NOT NULL,
	[Email] [nvarchar](150) NULL,
	[Scope] [varchar](50) NULL,
	[Role] [varchar](100) NULL,
 CONSTRAINT [PK_HumanAgent] PRIMARY KEY CLUSTERED 
(
	[HumanAgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[IndicationDetail]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[IndicationDetail](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[QAReady] [bit] NULL,
	[SearchReady] [bit] NULL,
	[Posted] [bit] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_IndicationDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[IPOs]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[IPOs](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[StockTicker_Code] [int] NULL,
	[StockTicker_Name] [nvarchar](250) NULL,
	[SharePrice] [decimal](38, 2) NULL,
	[SharesProposed] [decimal](38, 0) NULL,
	[IPOID] [decimal](38, 0) NULL,
	[SharesSold] [decimal](38, 0) NULL,
	[AmountRaised] [decimal](38, 2) NULL,
	[DateFiled] [datetime2](3) NULL,
	[DateCompleted] [datetime2](3) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[License]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[License](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Product_Code] [int] NULL,
	[Product_Name] [nvarchar](250) NULL,
	[InLicenseCompany_Code] [int] NOT NULL,
	[InLicenseCompany_Name] [nvarchar](250) NULL,
	[OutLicenseCompany_Code] [int] NULL,
	[OutLicenseCompany_Name] [nvarchar](250) NULL,
	[IndicationDetailCode] [int] NULL,
	[PipelineCode] [int] NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[ProductDetail_Code] [int] NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[DealAsset_Code] [int] NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[PartnershipTerms_Code] [int] NOT NULL,
	[PartnershipTerms_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__License__A25C5AA6D438AE0E] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[LicenseDetail]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[LicenseDetail](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[LicenseCode] [int] NOT NULL,
	[IndicationDetailCode] [int] NULL,
	[StandardIndicationCode] [int] NULL,
	[DiseaseCategoryCode] [int] NULL,
	[PipelineDetailCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[LinkifyIgnoreOriginCompany]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[LinkifyIgnoreOriginCompany](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[CompanyCode] [int] NULL,
	[CompanyName] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MAAttitudes]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MAAttitudes](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MachineAgent]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MachineAgent](
	[MachineAgentId] [int] IDENTITY(1,1) NOT NULL,
	[RunId] [int] NOT NULL,
	[ModelType] [char](50) NULL,
	[ModelVersion] [char](50) NULL,
 CONSTRAINT [PK_MachineAgent_2] PRIMARY KEY CLUSTERED 
(
	[MachineAgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MarketScale]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MarketScale](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[MarketScaleID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MechanismOfAction]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MechanismOfAction](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MechanismOfActionID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Milestone]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Milestone](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Product_Code] [int] NULL,
	[Product_Name] [nvarchar](250) NULL,
	[ProductDetail_Code] [int] NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[MilestoneType_Code] [int] NULL,
	[MilestoneType_Name] [nvarchar](250) NULL,
	[MilestoneStatus_Code] [int] NULL,
	[MilestoneStatus_Name] [nvarchar](250) NULL,
	[MilestoneIntent_Code] [int] NULL,
	[MilestoneIntent_Name] [nvarchar](250) NULL,
	[MilestoneText] [nvarchar](4000) NULL,
	[FormattedDate] [nvarchar](250) NULL,
	[InternalNotes] [nvarchar](255) NULL,
	[Notes] [nvarchar](255) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[FormattedDateTemplate] [nvarchar](255) NULL,
	[RowVersion] [timestamp] NOT NULL,
	[PipelineCode] [int] NULL,
 CONSTRAINT [PK__Mileston__A25C5AA6413D3D89] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MilestoneIntent]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MilestoneIntent](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[ShowForMilestone_Name] [nvarchar](250) NULL,
	[IsBeforeEvent_Name] [nvarchar](250) NULL,
	[MilestoneIntentID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[ShowForMilestone_Code] [int] NULL,
	[IsBeforeEvent_Code] [int] NULL,
	[IsIncluded_Code] [int] NULL,
	[IsIncluded_Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MilestoneStatus]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MilestoneStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[MilestoneStatusID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MilestoneType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MilestoneType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[MilestoneTypeID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IsIncluded_Code] [int] NULL,
	[IsIncluded_Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MilestoneType_to_MilestoneIntent]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MilestoneType_to_MilestoneIntent](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MilestoneType_Code] [int] NOT NULL,
	[MilestoneType_Name] [nvarchar](250) NULL,
	[MilestoneIntent_Code] [int] NULL,
	[MilestoneIntent_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK__MilestoneType_to_MilestoneIntent] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MLPrediction]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MLPrediction](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[RunId] [nvarchar](255) NULL,
	[EntityTypeCode] [int] NOT NULL,
	[PredictedValue] [nvarchar](1000) NOT NULL,
	[CorrectValue] [nvarchar](1000) NULL,
	[ModelName] [nvarchar](255) NULL,
	[ModelVersion] [nvarchar](255) NULL,
 CONSTRAINT [PK_MLPredictions] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MolecularTarget]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MolecularTarget](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MolecularTargetID] [nvarchar](200) NULL,
	[MolecularTargetFamily_Code] [int] NULL,
	[MolecularTargetFamily_Name] [nvarchar](250) NULL,
	[DateTargetCreated] [nvarchar](100) NULL,
	[LegacyTargetName] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[TargetCunlpID] [int] NULL,
	[Synonyms] [nvarchar](250) NULL,
	[QAReady] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
 CONSTRAINT [PK__Molecula__A25C5AA6B5EB7AA2_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MolecularTarget_BU_02_21_2023]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MolecularTarget_BU_02_21_2023](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MolecularTargetID] [nvarchar](200) NULL,
	[MolecularTargetFamily_Code] [int] NULL,
	[Target_CUNLP_ID] [int] NULL,
	[MolecularTargetFamily_Name] [nvarchar](250) NULL,
	[DateTargetCreated] [nvarchar](100) NULL,
	[LegacyTargetName] [nvarchar](250) NULL,
	[Synonyms] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[QAReady] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
	[MdmMTCode] [int] NULL,
 CONSTRAINT [PK_MolecularTarget_New2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MolecularTargetFamily]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MolecularTargetFamily](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[IsImportedFromStaticTable] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
	[QAReady] [bit] NOT NULL,
 CONSTRAINT [PK__Molecula__A25C5AA6F8FD9CFA_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MolecularTargetFamily_BU_02_21_2023]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MolecularTargetFamily_BU_02_21_2023](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NOT NULL,
	[QAReady] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
	[IsImportedFromStaticTable] [bit] NOT NULL,
 CONSTRAINT [PK_OdsMolecularTargetFamily] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MolecularTargetFamilyUrlHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MolecularTargetFamilyUrlHistory](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MolecularTargetFamilyCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_MolecularTargetFamilyUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_MTF_URLSearchBy] UNIQUE NONCLUSTERED 
(
	[URLSearchBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[MolecularTargetUrlHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[MolecularTargetUrlHistory](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MolecularTargetCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_MolecularTargetUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_MT_URLSearchBy] UNIQUE NONCLUSTERED 
(
	[URLSearchBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[PartnershipScope]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[PartnershipScope](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[PartnershipScopeID] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[PartnershipTerms]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[PartnershipTerms](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[PartnershipTermsID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[PipelineDetail]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[PipelineDetail](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[PipelineCode] [int] NOT NULL,
	[PhaseOfDevelopment_Code] [int] NOT NULL,
	[RouteOfAdministration_Code] [int] NULL,
	[RegulatoryDesignationRegionCode] [int] NOT NULL,
	[IsDiscontinued] [bit] NULL,
 CONSTRAINT [PK_PipelineDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[PipelineMLPrediction]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[PipelineMLPrediction](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MLPredictionCode] [int] NOT NULL,
	[PipelineRecordId] [int] NOT NULL,
	[BoundingBoxX] [int] NULL,
	[BoundingBoxY] [int] NULL,
	[BoundingBoxW] [int] NULL,
	[BoundingBoxH] [int] NULL,
 CONSTRAINT [PK_PipelineMLPrediction] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[PipelineRegulatoryDetail]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[PipelineRegulatoryDetail](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[RegulatoryDesignationCode] [int] NOT NULL,
	[PipelineCode] [int] NOT NULL,
 CONSTRAINT [PK_PipelineRegulatoryDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[PipelineUrl]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[PipelineUrl](
	[UrlId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [int] NOT NULL,
	[PipelineUrl] [nvarchar](500) NULL,
	[ValidatorId] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Instruction] [nvarchar](max) NULL,
	[PipelineExists] [bit] NULL,
	[DeletedAt] [datetime] NULL,
 CONSTRAINT [PK_PipelineUrl] PRIMARY KEY CLUSTERED 
(
	[UrlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[PipelineUrlHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[PipelineUrlHistory](
	[UrlId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [int] NOT NULL,
	[PipelineUrl] [nvarchar](500) NULL,
	[ValidatorId] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Instruction] [nvarchar](max) NULL,
	[PipelineExists] [bit] NULL,
	[UpdatedHistoryDate] [datetime] NULL,
	[DeletedAt] [datetime] NULL,
 CONSTRAINT [PK_PipelineUrlHistory] PRIMARY KEY CLUSTERED 
(
	[UrlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[Product]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Product](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[ProductNames] [nvarchar](1000) NULL,
	[ProductID] [int] NULL,
	[BrandName] [nvarchar](200) NULL,
	[ChemicalName] [nvarchar](200) NULL,
	[CompoundName] [nvarchar](200) NULL,
	[FormerCompoundName] [nvarchar](200) NULL,
	[GenericName] [nvarchar](200) NULL,
	[FormerGenericName] [nvarchar](200) NULL,
	[InformalName] [nvarchar](200) NULL,
	[OtherName] [nvarchar](200) NULL,
	[FormerName] [nvarchar](200) NULL,
	[OriginatorCompany_Code] [int] NOT NULL,
	[OriginatorCompany_Name] [nvarchar](250) NULL,
	[OwnerCompany_Code] [int] NULL,
	[OwnerCompany_Name] [nvarchar](250) NULL,
	[PartnerCompany_Code] [int] NULL,
	[PartnerCompany_Name] [nvarchar](250) NULL,
	[Description] [nvarchar](255) NULL,
	[IsDiscontinued_Name] [nvarchar](250) NULL,
	[IsDiscontinued_Code] [int] NOT NULL,
	[DateDiscontinued] [datetime] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[InternalNotes] [varchar](1000) NULL,
	[SearchBy] [varchar](512) NULL,
	[IsDiscontinued] [bit] NULL,
	[DiscontinuedNotes] [varchar](1000) NULL,
	[Qaready] [bit] NULL,
	[SearchReady] [bit] NULL,
	[Posted] [bit] NULL,
	[MdmProdCode] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Product_to_MechanismOfAction]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Product_to_MechanismOfAction](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[ProductID] [int] NULL,
	[MechanismOfAction_Name] [nvarchar](250) NULL,
	[MechanismOfAction_Code] [int] NOT NULL,
	[MechanismOfActionID] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Product_to_MolecularTarget]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Product_to_MolecularTarget](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[ProductID] [int] NULL,
	[MolecularTarget_Code] [int] NOT NULL,
	[Rank] [smallint] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[moleculartarget_name] [varchar](255) NULL,
 CONSTRAINT [PK_Product_to_MolecularTarget_BU_12_18_2019] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Product_to_StandardIndication]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Product_to_StandardIndication](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[ProductID] [int] NULL,
	[StandardIndication_Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[StandardIndication_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Product_to_TherapeuticModality]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Product_to_TherapeuticModality](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[ProductID] [int] NULL,
	[TherapeuticModality_Code] [int] NOT NULL,
	[Rank] [smallint] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[TherapeuticModality_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[ProductDetail]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[ProductDetail](
	[Name] [varchar](8000) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[StandardIndication_Code] [int] NOT NULL,
	[StandardIndication_Name] [nvarchar](250) NULL,
	[IndicationDetailsID] [int] NULL,
	[IsDiscontinued] [bit] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[DateDiscontinued] [datetime] NULL,
	[DiscontinuedNotes] [varchar](1000) NULL,
	[Qaready] [bit] NULL,
	[SearchReady] [bit] NULL,
	[Posted] [bit] NULL,
	[MdmPDCode] [int] NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[ProductNames]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[ProductNames](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](255) NULL,
	[IndInfoID] [int] NULL,
	[ProductNameType_Code] [int] NOT NULL,
	[ProductNameType_Name] [nvarchar](255) NULL,
	[LocationID] [int] NULL,
	[InternalNotes] [varchar](50) NULL,
	[ToPublish] [bit] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
	[OmitFromLinkify] [bit] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ProductNames] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[ProductNameTypes]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[ProductNameTypes](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NULL,
	[Sort_Order] [int] NOT NULL,
 CONSTRAINT [PK_ProductNameTypes_1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[ProductUrlHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[ProductUrlHistory](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_ProductUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_PH_URLSearchBy] UNIQUE NONCLUSTERED 
(
	[URLSearchBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[RareOrphanIntent]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[RareOrphanIntent](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_RareOrphanIntent] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Region]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Region](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Region__A25C5AA640B0A532] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[RegulationRegionCountry]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[RegulationRegionCountry](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[RegulatoryDesignationRegionCode] [int] NOT NULL,
	[CountryCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[RegulatoryDesignation]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[RegulatoryDesignation](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[RegulatoryRegion] [nvarchar](250) NULL,
	[ProductDetail_Code] [int] NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[DateGranted] [datetime2](7) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[RegulatoryDesignationType_Code] [int] NOT NULL,
	[RegulatoryDesignationType_Name] [varchar](255) NULL,
	[RegulatoryDesignationRegion_Code] [int] NOT NULL,
	[RegulatoryDesignationRegion_Name] [varchar](255) NULL,
	[PipelineCode] [int] NULL,
	[RegulatoryDesignationRegionTypeCode] [int] NULL,
 CONSTRAINT [PK__Regulato__A25C5AA63109239A] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[RegulatoryDesignationRegion]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[RegulatoryDesignationRegion](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[RegulatoryDesignationRegionType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[RegulatoryDesignationRegionType](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[RegulatoryDesignationRegionCode] [int] NOT NULL,
	[RegulatoryDesignationTypeCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[RegulatoryDesignationType]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[RegulatoryDesignationType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[RouteOfAdministration]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[RouteOfAdministration](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[RouteOfAdministrationID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[SessionLog]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[SessionLog](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[LoggedEntityId] [int] NOT NULL,
	[SessionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SessionLog] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[StandardIndication]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StandardIndication](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[DiseaseCategory_Code] [int] NOT NULL,
	[DiseaseCategory_Name] [nvarchar](250) NULL,
	[StandardIndicationID] [nvarchar](200) NULL,
	[IndicationDetailsID] [nvarchar](250) NULL,
	[IndicationDetails] [nvarchar](max) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[Qaready] [bit] NULL,
	[SearchReady] [bit] NULL,
	[Posted] [bit] NULL,
	[MdmSicode] [int] NULL,
 CONSTRAINT [PK__Standard__A25C5AA6A9FCA64E_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[StandardIndication_BU_02_21_2023]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StandardIndication_BU_02_21_2023](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseCategory_Code] [int] NOT NULL,
	[DiseaseCategory_Name] [nvarchar](250) NULL,
	[StandardIndicationID] [nvarchar](200) NULL,
	[IndicationDetailsID] [nvarchar](250) NULL,
	[IndicationDetails] [nvarchar](max) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[QAReady] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
	[MdmSICode] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ods].[StandardIndicationSynonym]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StandardIndicationSynonym](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[StandardIndicationName] [nvarchar](250) NOT NULL,
	[SynonymName] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](500) NULL,
	[MdmSISCode] [int] NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_StandardIndicationSynonym_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[StandardIndicationSynonym_BU_02_21_2023]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StandardIndicationSynonym_BU_02_21_2023](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[StandardIndicationName] [nvarchar](250) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](500) NULL,
	[MdmSISCode] [int] NULL,
 CONSTRAINT [PK_StandardIndicationSynonym] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[StandardIndicationUrlHistory]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StandardIndicationUrlHistory](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_StandardIndicationUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_SI_URLSearchBy] UNIQUE NONCLUSTERED 
(
	[URLSearchBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[State]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[State](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[Country_Code] [int] NOT NULL,
	[Country_Name] [nvarchar](250) NULL,
	[SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[StateNameAbbr] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[StockExchange]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StockExchange](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[BC_ExchangeName] [nvarchar](200) NULL,
	[BCExchangeMarket] [nvarchar](200) NULL,
	[Xignite_Description] [nvarchar](200) NULL,
	[Exclude_From_DataCollect] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__StockExc__A25C5AA600BA9020] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[StockFundamentals]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StockFundamentals](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Company_Code] [int] NULL,
	[Company_Name] [nvarchar](250) NULL,
	[Currency] [nvarchar](50) NULL,
	[StockTicker_Code] [int] NULL,
	[StockTicker_Name] [nvarchar](250) NULL,
	[HighPriceLast52Weeks] [money] NULL,
	[LowPriceLast52Weeks] [money] NULL,
	[LatestCloseAsPercentOf52WeekHigh] [float] NULL,
	[LatestCloseAsPercentOf52WeekLow] [float] NULL,
	[PercentPriceChangeYTD] [float] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[AsOfDate] [date] NULL,
	[RequestDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Stocks]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Stocks](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Company_Code] [int] NULL,
	[CompanyID] [int] NULL,
	[StockTicker_Code] [int] NULL,
	[TickerSymbol] [nvarchar](500) NULL,
	[MarketCode] [nvarchar](50) NULL,
	[TradeDate] [datetime] NULL,
	[LastSharePrice] [money] NULL,
	[OpenSharePrice] [money] NULL,
	[HighSharePrice] [money] NULL,
	[LowSharePrice] [money] NULL,
	[Volume] [int] NULL,
	[LastClose] [money] NULL,
	[ChangeFromOpen] [float] NULL,
	[PercentChangeFromOpen] [float] NULL,
	[ChangeFromLastClose] [float] NULL,
	[PercentChangeFromLastClose] [float] NULL,
	[SplitRatio] [float] NULL,
	[CumulativeCashDividend] [money] NULL,
	[CummulativeStockDividend] [money] NULL,
	[CumulativeStockDividendRatio] [float] NULL,
	[Currency] [nvarchar](50) NULL,
	[AdjustmentMethodUsed] [nvarchar](255) NULL,
	[DataConfidence] [nvarchar](50) NULL,
	[LastPriceSource] [nvarchar](50) NULL,
	[LastPriceType] [nvarchar](50) NULL,
	[EndOfDayPrice] [money] NULL,
	[EndOfDayPriceDate] [datetime] NULL,
	[EndOfDayPriceMethodUsed] [nvarchar](50) NULL,
	[EndOfDayPriceTiming] [nvarchar](50) NULL,
	[EndOfDayPriceSource] [nvarchar](50) NULL,
	[ExchangeClose] [float] NULL,
	[Valuation] [float] NULL,
	[ExchangeCloseDate] [datetime] NULL,
	[ValuationDate] [datetime] NULL,
	[Outcome] [nvarchar](255) NULL,
	[Message] [nvarchar](500) NULL,
	[RequestDate] [datetime] NULL,
	[IsProcessed] [bit] NULL,
	[OriginalClosePrice] [float] NULL,
	[OriginalVolume] [int] NULL,
	[ExchangeRate] [float] NULL,
	[IsPrimaryCode] [int] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Stocks1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Stocks2]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Stocks2](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Company_Code] [int] NULL,
	[CompanyID] [int] NULL,
	[StockTicker_Code] [int] NULL,
	[TickerSymbol] [nvarchar](500) NULL,
	[MarketCode] [nvarchar](50) NULL,
	[TradeDate] [datetime] NULL,
	[LastSharePrice] [money] NULL,
	[OpenSharePrice] [money] NULL,
	[HighSharePrice] [money] NULL,
	[LowSharePrice] [money] NULL,
	[Volume] [int] NULL,
	[LastClose] [money] NULL,
	[ChangeFromOpen] [float] NULL,
	[PercentChangeFromOpen] [float] NULL,
	[ChangeFromLastClose] [float] NULL,
	[PercentChangeFromLastClose] [float] NULL,
	[SplitRatio] [float] NULL,
	[CumulativeCashDividend] [money] NULL,
	[CummulativeStockDividend] [money] NULL,
	[CumulativeStockDividendRatio] [float] NULL,
	[Currency] [nvarchar](50) NULL,
	[AdjustmentMethodUsed] [nvarchar](255) NULL,
	[DataConfidence] [nvarchar](50) NULL,
	[LastPriceSource] [nvarchar](50) NULL,
	[LastPriceType] [nvarchar](50) NULL,
	[EndOfDayPrice] [money] NULL,
	[EndOfDayPriceDate] [datetime] NULL,
	[EndOfDayPriceMethodUsed] [nvarchar](50) NULL,
	[EndOfDayPriceTiming] [nvarchar](50) NULL,
	[EndOfDayPriceSource] [nvarchar](50) NULL,
	[ExchangeClose] [float] NULL,
	[Valuation] [float] NULL,
	[ExchangeCloseDate] [datetime] NULL,
	[ValuationDate] [datetime] NULL,
	[Outcome] [nvarchar](255) NULL,
	[Message] [nvarchar](500) NULL,
	[RequestDate] [datetime] NULL,
	[IsProcessed] [bit] NULL,
	[OriginalClosePrice] [float] NULL,
	[OriginalVolume] [int] NULL,
	[ExchangeRate] [float] NULL,
	[IsPrimaryCode] [int] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[StockSplits]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StockSplits](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[StockSplitID] [int] NULL,
	[StockTicker_Code] [int] NULL,
	[StockTicker_Name] [nvarchar](250) NULL,
	[StockSplitDate] [datetime2](3) NULL,
	[Ratio] [decimal](38, 0) NULL,
	[Divisor] [decimal](38, 0) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[StocksV32]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StocksV32](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Company_Code] [int] NULL,
	[CompanyID] [int] NULL,
	[StockTicker_Code] [int] NULL,
	[TickerSymbol] [nvarchar](50) NULL,
	[MarketCode] [nvarchar](50) NULL,
	[TradeDate] [datetime] NULL,
	[LastSharePrice] [money] NULL,
	[OpenSharePrice] [money] NULL,
	[HighSharePrice] [money] NULL,
	[LowSharePrice] [money] NULL,
	[Volume] [int] NULL,
	[LastClose] [money] NULL,
	[ChangeFromOpen] [float] NULL,
	[PercentChangeFromOpen] [float] NULL,
	[ChangeFromLastClose] [float] NULL,
	[PercentChangeFromLastClose] [float] NULL,
	[SplitRatio] [float] NULL,
	[CumulativeCashDividend] [money] NULL,
	[CummulativeStockDividend] [money] NULL,
	[CumulativeStockDividendRatio] [float] NULL,
	[Currency] [nvarchar](50) NULL,
	[AdjustmentMethodUsed] [nvarchar](255) NULL,
	[DataConfidence] [nvarchar](50) NULL,
	[LastPriceSource] [nvarchar](50) NULL,
	[LastPriceType] [nvarchar](50) NULL,
	[EndOfDayPrice] [money] NULL,
	[EndOfDayPriceDate] [datetime] NULL,
	[EndOfDayPriceMethodUsed] [nvarchar](50) NULL,
	[EndOfDayPriceTiming] [nvarchar](50) NULL,
	[EndOfDayPriceSource] [nvarchar](50) NULL,
	[ExchangeClose] [float] NULL,
	[Valuation] [float] NULL,
	[ExchangeCloseDate] [datetime] NULL,
	[ValuationDate] [datetime] NULL,
	[Outcome] [nvarchar](255) NULL,
	[Message] [nvarchar](255) NULL,
	[RequestDate] [datetime] NULL,
	[IsProcessed] [bit] NULL,
	[OriginalClosePrice] [float] NULL,
	[OriginalVolume] [int] NULL,
	[ExchangeRate] [float] NULL,
	[IsPrimaryCode] [int] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[StockTicker]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[StockTicker](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[StockExchange_Code] [int] NOT NULL,
	[StockExchange_Name] [nvarchar](250) NULL,
	[Company_Code] [int] NOT NULL,
	[Company_Name] [nvarchar](250) NULL,
	[IsPrimary_Code] [int] NOT NULL,
	[IsPrimary_Name] [nvarchar](250) NULL,
	[Exclude_From_DataCollect] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Rank] [smallint] NULL,
 CONSTRAINT [PK__StockTic__A25C5AA6E0B08FA3] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[SubRegion]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[SubRegion](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[Region_Code] [int] NOT NULL,
	[Region_Name] [nvarchar](250) NULL,
	[SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[TherapeuticModality]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[TherapeuticModality](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[TherapeuticModalityID] [decimal](18, 0) NULL,
	[ParentCode] [int] NULL,
	[ModalityLevel] [decimal](18, 0) NULL,
	[UseInDeals] [bit] NULL,
	[UseInClinical] [bit] NULL,
	[SortOrder] [decimal](18, 0) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[QAReady] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
 CONSTRAINT [PK_TherapeuticModality_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[TherapeuticModality_BU_02_21_2023]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[TherapeuticModality_BU_02_21_2023](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[TherapeuticModalityID] [decimal](18, 0) NULL,
	[ParentCode] [int] NULL,
	[ModalityLevel] [decimal](18, 0) NULL,
	[UseInDeals] [bit] NULL,
	[UseInClinical] [bit] NULL,
	[SortOrder] [decimal](18, 0) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[QAReady] [bit] NOT NULL,
	[SearchReady] [bit] NOT NULL,
	[Posted] [bit] NOT NULL,
	[MdmTMCode] [int] NULL,
 CONSTRAINT [PK__TherMod_ods] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Tier]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Tier](
	[TierId] [int] IDENTITY(1,1) NOT NULL,
	[TierName] [varchar](50) NOT NULL,
	[UpdateFrequencyDays] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Tier] PRIMARY KEY CLUSTERED 
(
	[TierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[tmp_identityTable]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[tmp_identityTable](
	[HotTopic_Code] [int] NOT NULL,
	[Product_Code] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[DateRemoved] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[TrialStatus]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[TrialStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[TrialStatusID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[Validator]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Validator](
	[ValidatorId] [int] IDENTITY(1,1) NOT NULL,
	[ValidatorName] [nvarchar](100) NOT NULL,
	[Note] [varchar](200) NULL,
 CONSTRAINT [PK_Validator] PRIMARY KEY CLUSTERED 
(
	[ValidatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[ValidatorProductComparison]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[ValidatorProductComparison](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [int] NOT NULL,
	[AgentCode] [int] NOT NULL,
	[MLSuggestedCode] [int] NULL,
	[MLSuggestedValue] [nvarchar](250) NULL,
	[DatabaseCode] [int] NULL,
	[DatabaseValue] [nvarchar](250) NULL,
	[SelectedOption] [nvarchar](250) NOT NULL,
	[SelectedPropertyCode] [int] NULL,
	[SelectedPropertyValue] [nvarchar](250) NULL,
	[SelectedPropertyPath] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ValidatorProductComparison] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[YesOrNo]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[YesOrNo](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ods].[zzz]    Script Date: 2/23/2023 8:27:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[zzz](
	[abc] [nchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [ods].[AEDIPipelineRecord] ADD  CONSTRAINT [DF_AEDIPipelineRecord_PipelineCode]  DEFAULT (NULL) FOR [PipelineCode]
GO
ALTER TABLE [ods].[AEDIPipelineRecord] ADD  CONSTRAINT [DF_AEDIPipelineRecord_PipelineRecordState]  DEFAULT ((0)) FOR [PipelineRecordState]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] ADD  CONSTRAINT [DF_AEDIPipelineScrapedData_CreatedAt_1]  DEFAULT (getutcdate()) FOR [CreatedAt]
GO
ALTER TABLE [ods].[AEDIScraperStrategies] ADD  CONSTRAINT [DF_AEDIScraperStrategies_ScraperStrategiesCreateAt]  DEFAULT (getdate()) FOR [ScraperStrategiesCreateAt]
GO
ALTER TABLE [ods].[Company] ADD  CONSTRAINT [DF__Company__SearchB__174E50DA]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [ods].[Company] ADD  CONSTRAINT [DF_Company_DoingBusinessAs]  DEFAULT (NULL) FOR [DoingBusinessAs]
GO
ALTER TABLE [ods].[DealAssets] ADD  CONSTRAINT [DF__DealAsset__HasUn__180D6AE9]  DEFAULT ((0)) FOR [HasUndisclosedTerritories]
GO
ALTER TABLE [ods].[Deals] ADD  CONSTRAINT [DF_ValidFromDeal]  DEFAULT (dateadd(second,(-1),sysutcdatetime())) FOR [ValidFrom]
GO
ALTER TABLE [ods].[Deals] ADD  CONSTRAINT [DF_ValidToDeals]  DEFAULT ('9999.12.31 23:59:59.99') FOR [ValidTo]
GO
ALTER TABLE [ods].[DiseaseCategory] ADD  CONSTRAINT [DF_Def_QAReady]  DEFAULT ((0)) FOR [QAReady]
GO
ALTER TABLE [ods].[DiseaseCategory] ADD  CONSTRAINT [DF_Def_SearchReady]  DEFAULT ((0)) FOR [SearchReady]
GO
ALTER TABLE [ods].[DiseaseCategory] ADD  CONSTRAINT [DF_Def_Posted]  DEFAULT ((0)) FOR [Posted]
GO
ALTER TABLE [ods].[DocInputText] ADD  CONSTRAINT [DF__DocInputText_f__0E3091A2]  DEFAULT ((0)) FOR [New_Flag]
GO
ALTER TABLE [ods].[DocInputText] ADD  CONSTRAINT [DF_DocInputText_Source_Code]  DEFAULT ((-1)) FOR [Source_Code]
GO
ALTER TABLE [ods].[DocInputText] ADD  CONSTRAINT [DF__DocInputT__Compa__7AEC43F4]  DEFAULT ((0)) FOR [CompanyReload]
GO
ALTER TABLE [ods].[DocMenuText] ADD  DEFAULT ((0)) FOR [To_Be_Reviewed]
GO
ALTER TABLE [ods].[DocMenuText] ADD  DEFAULT ((0)) FOR [Reviewed]
GO
ALTER TABLE [ods].[DocMenuText] ADD  DEFAULT ((0)) FOR [IsManualUpload]
GO
ALTER TABLE [ods].[DocumentInfo] ADD  CONSTRAINT [DF_DocumentInfo_CreatedAt]  DEFAULT (getutcdate()) FOR [CreatedAt]
GO
ALTER TABLE [ods].[DocumentInfo] ADD  CONSTRAINT [DF_DocumentInfo_State]  DEFAULT ((100)) FOR [State]
GO
ALTER TABLE [ods].[DocumentInfo] ADD  CONSTRAINT [DF_DocumentInfo_ValidFrom]  DEFAULT (dateadd(second,(-1),sysutcdatetime())) FOR [ValidFrom]
GO
ALTER TABLE [ods].[DocumentInfo] ADD  CONSTRAINT [DF_DocumentInfo_ValidTo]  DEFAULT ('9999.12.31 23:59:59.99') FOR [ValidTo]
GO
ALTER TABLE [ods].[EventStatus] ADD  DEFAULT ((0)) FOR [UseInMilestone]
GO
ALTER TABLE [ods].[EventType] ADD  DEFAULT ((0)) FOR [IsMilestoneEvent]
GO
ALTER TABLE [ods].[EventType] ADD  DEFAULT ((0)) FOR [IsNonMilestoneEvent]
GO
ALTER TABLE [ods].[Financings] ADD  DEFAULT ((0)) FOR [Posted]
GO
ALTER TABLE [ods].[Financings] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [ods].[Financings] ADD  DEFAULT ((0)) FOR [Qacompleted]
GO
ALTER TABLE [ods].[Financings] ADD  DEFAULT ((0)) FOR [ReadyForQa]
GO
ALTER TABLE [ods].[Financings] ADD  CONSTRAINT [DF_ValidFromFinancings]  DEFAULT (dateadd(second,(-1),sysutcdatetime())) FOR [ValidFrom]
GO
ALTER TABLE [ods].[Financings] ADD  CONSTRAINT [DF_ValidToFinancings]  DEFAULT ('9999.12.31 23:59:59.99') FOR [ValidTo]
GO
ALTER TABLE [ods].[HotTopic] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ods].[HotTopic] ADD  DEFAULT (getdate()) FOR [DateActive]
GO
ALTER TABLE [ods].[MolecularTarget] ADD  CONSTRAINT [DF__Molecular__Searc__1EEF72A2]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [ods].[MolecularTarget] ADD  CONSTRAINT [DF_MT_Def_QAReady]  DEFAULT ((0)) FOR [QAReady]
GO
ALTER TABLE [ods].[MolecularTarget] ADD  CONSTRAINT [DF_MT_Def_SearchReady]  DEFAULT ((0)) FOR [SearchReady]
GO
ALTER TABLE [ods].[MolecularTarget] ADD  CONSTRAINT [DF_MT_Def_Posted]  DEFAULT ((0)) FOR [Posted]
GO
ALTER TABLE [ods].[MolecularTargetFamily] ADD  CONSTRAINT [DF__Molecular__Searc__21CBDF4D]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [ods].[MolecularTargetFamily] ADD  CONSTRAINT [DF_MolecularTargetFamily_IsImportedFromStaticTable_1]  DEFAULT ((0)) FOR [IsImportedFromStaticTable]
GO
ALTER TABLE [ods].[MolecularTargetFamily] ADD  CONSTRAINT [DF_MTF_Def_SearchReady]  DEFAULT ((0)) FOR [SearchReady]
GO
ALTER TABLE [ods].[MolecularTargetFamily] ADD  CONSTRAINT [DF_MTF_Def_Posted]  DEFAULT ((0)) FOR [Posted]
GO
ALTER TABLE [ods].[MolecularTargetFamily] ADD  CONSTRAINT [DF_MTF_Def_QAReady]  DEFAULT ((0)) FOR [QAReady]
GO
ALTER TABLE [ods].[Pipeline] ADD  CONSTRAINT [DF_Pipeline_Qaready]  DEFAULT ((0)) FOR [Qaready]
GO
ALTER TABLE [ods].[Pipeline] ADD  CONSTRAINT [DF_Pipeline_SearchReady]  DEFAULT ((0)) FOR [SearchReady]
GO
ALTER TABLE [ods].[Pipeline] ADD  CONSTRAINT [DF_Pipeline_Posted]  DEFAULT ((0)) FOR [Posted]
GO
ALTER TABLE [ods].[Pipeline] ADD  CONSTRAINT [DF_ValidFrom]  DEFAULT (dateadd(second,(-1),sysutcdatetime())) FOR [ValidFrom]
GO
ALTER TABLE [ods].[Pipeline] ADD  CONSTRAINT [DF_ValidTo]  DEFAULT ('9999.12.31 23:59:59.99') FOR [ValidTo]
GO
ALTER TABLE [ods].[PipelineUrl] ADD  CONSTRAINT [DF_PipelineUrl_PipelineExists]  DEFAULT ((1)) FOR [PipelineExists]
GO
ALTER TABLE [ods].[PipelineUrlHistory] ADD  CONSTRAINT [DF_PipelineUrlHistory_PipelineExists]  DEFAULT ((1)) FOR [PipelineExists]
GO
ALTER TABLE [ods].[Product] ADD  CONSTRAINT [DF__Product__SearchB__1C1305F7]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [ods].[ProductDetail] ADD  CONSTRAINT [DF_ProductDetail_Qaready]  DEFAULT ((0)) FOR [Qaready]
GO
ALTER TABLE [ods].[ProductDetail] ADD  CONSTRAINT [DF_ProductDetail_SearchReady]  DEFAULT ((0)) FOR [SearchReady]
GO
ALTER TABLE [ods].[ProductDetail] ADD  CONSTRAINT [DF_ProductDetail_Posted]  DEFAULT ((0)) FOR [Posted]
GO
ALTER TABLE [ods].[StandardIndication] ADD  DEFAULT ((0)) FOR [Qaready]
GO
ALTER TABLE [ods].[StandardIndication] ADD  DEFAULT ((0)) FOR [SearchReady]
GO
ALTER TABLE [ods].[StandardIndication] ADD  DEFAULT ((0)) FOR [Posted]
GO
ALTER TABLE [ods].[StockExchange] ADD  CONSTRAINT [DF__StockExch__Exclu__45544755]  DEFAULT ((0)) FOR [Exclude_From_DataCollect]
GO
ALTER TABLE [ods].[StockTicker] ADD  CONSTRAINT [DF__StockTick__Exclu__46486B8E]  DEFAULT ((0)) FOR [Exclude_From_DataCollect]
GO
ALTER TABLE [ods].[TherapeuticModality] ADD  CONSTRAINT [DF_TM_Def_QAReady]  DEFAULT ((0)) FOR [QAReady]
GO
ALTER TABLE [ods].[TherapeuticModality] ADD  CONSTRAINT [DF_TM_Def_SearchReady]  DEFAULT ((0)) FOR [SearchReady]
GO
ALTER TABLE [ods].[TherapeuticModality] ADD  CONSTRAINT [DF_TM_Def_Posted]  DEFAULT ((0)) FOR [Posted]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIAuditLog_AEDIAuditLog] FOREIGN KEY([Uid])
REFERENCES [ods].[AEDIAuditLog] ([Uid])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIAuditLog_AEDIAuditLog]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIAuditLog_CompanyCode] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[AEDIAuditLog] NOCHECK CONSTRAINT [FK_AEDIAuditLog_CompanyCode]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIIndicationRecord_UId] FOREIGN KEY([AediIndicationRecordId])
REFERENCES [ods].[AEDIIndicationRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIIndicationRecord_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPhaseRecord_UId] FOREIGN KEY([AediPhaseRecordId])
REFERENCES [ods].[AEDIPhaseRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIPhaseRecord_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AediPipelineRecordId_UId] FOREIGN KEY([AediPipelineRecordId])
REFERENCES [ods].[AEDIPipelineRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AediPipelineRecordId_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineScrapedData_UId] FOREIGN KEY([AediPipelineScrapedDataId])
REFERENCES [ods].[AEDIPipelineScrapedData] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIPipelineScrapedData_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIProductRecord_UId] FOREIGN KEY([AediProductRecordId])
REFERENCES [ods].[AEDIProductRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIProductRecord_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_Agents_AgentID] FOREIGN KEY([AgentId])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_Agents_AgentID]
GO
ALTER TABLE [ods].[AEDIDocMLEntities]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIDocML__DocEn__11C38D69] FOREIGN KEY([DocEntityId])
REFERENCES [ods].[AEDIDocEntityValues] ([UId])
GO
ALTER TABLE [ods].[AEDIDocMLEntities] CHECK CONSTRAINT [FK__AEDIDocML__DocEn__11C38D69]
GO
ALTER TABLE [ods].[AEDIDocMLEntities]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIDocML__DocMl__12B7B1A2] FOREIGN KEY([DocMlId])
REFERENCES [ods].[AEDIDocMLProcessed] ([UId])
GO
ALTER TABLE [ods].[AEDIDocMLEntities] CHECK CONSTRAINT [FK__AEDIDocML__DocMl__12B7B1A2]
GO
ALTER TABLE [ods].[AEDIIndicationRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIIndic__Indic__13ABD5DB] FOREIGN KEY([IndicationId])
REFERENCES [ods].[AEDIIndication] ([UId])
GO
ALTER TABLE [ods].[AEDIIndicationRecord] CHECK CONSTRAINT [FK__AEDIIndic__Indic__13ABD5DB]
GO
ALTER TABLE [ods].[AEDIIndicationRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIIndic__Valid__149FFA14] FOREIGN KEY([ValidationId])
REFERENCES [ods].[AEDIValidationLog] ([UId])
GO
ALTER TABLE [ods].[AEDIIndicationRecord] CHECK CONSTRAINT [FK__AEDIIndic__Valid__149FFA14]
GO
ALTER TABLE [ods].[AEDIPhaseRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPhase__Phase__15941E4D] FOREIGN KEY([PhaseId])
REFERENCES [ods].[AEDIPhase] ([UId])
GO
ALTER TABLE [ods].[AEDIPhaseRecord] CHECK CONSTRAINT [FK__AEDIPhase__Phase__15941E4D]
GO
ALTER TABLE [ods].[AEDIPhaseRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPhase__Valid__16884286] FOREIGN KEY([ValidationId])
REFERENCES [ods].[AEDIValidationLog] ([UId])
GO
ALTER TABLE [ods].[AEDIPhaseRecord] CHECK CONSTRAINT [FK__AEDIPhase__Valid__16884286]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPipel__Indic__3536E6D8] FOREIGN KEY([IndicationRecordId])
REFERENCES [ods].[AEDIIndicationRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK__AEDIPipel__Indic__3536E6D8]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPipel__Phase__362B0B11] FOREIGN KEY([PhaseRecordId])
REFERENCES [ods].[AEDIPhaseRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK__AEDIPipel__Phase__362B0B11]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPipel__Pipel__51A6D819] FOREIGN KEY([PipelineId])
REFERENCES [ods].[AEDIPipelineScrapedData] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK__AEDIPipel__Pipel__51A6D819]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPipel__Produ__38135383] FOREIGN KEY([ProductRecordId])
REFERENCES [ods].[AEDIProductRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK__AEDIPipel__Produ__38135383]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineRecord_LastReviewedBy] FOREIGN KEY([LastReviewedBy])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK_AEDIPipelineRecord_LastReviewedBy]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineRecord_PipelineCode] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK_AEDIPipelineRecord_PipelineCode]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineScrapedStateUpdatedBy] FOREIGN KEY([PipelineScrapedStateUpdatedBy])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] CHECK CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineScrapedStateUpdatedBy]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineUrlId] FOREIGN KEY([PipelineUrlId])
REFERENCES [ods].[PipelineUrl] ([UrlId])
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] CHECK CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineUrlId]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineScrapedData_StrategyId] FOREIGN KEY([StrategyId])
REFERENCES [ods].[AEDIScraperStrategies] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] CHECK CONSTRAINT [FK_AEDIPipelineScrapedData_StrategyId]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyCode_AEDIPipelineScrapedData] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] NOCHECK CONSTRAINT [FK_CompanyCode_AEDIPipelineScrapedData]
GO
ALTER TABLE [ods].[AEDIProductRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIProdu__Produ__2105D0F9] FOREIGN KEY([ProductId])
REFERENCES [ods].[AEDIProduct] ([UId])
GO
ALTER TABLE [ods].[AEDIProductRecord] CHECK CONSTRAINT [FK__AEDIProdu__Produ__2105D0F9]
GO
ALTER TABLE [ods].[AEDIProductRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIProdu__Valid__21F9F532] FOREIGN KEY([ValidationId])
REFERENCES [ods].[AEDIValidationLog] ([UId])
GO
ALTER TABLE [ods].[AEDIProductRecord] CHECK CONSTRAINT [FK__AEDIProdu__Valid__21F9F532]
GO
ALTER TABLE [ods].[AEDIValidationEntityLog]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIValid__DocEn__22EE196B] FOREIGN KEY([DocEntityId])
REFERENCES [ods].[AEDIDocEntityValues] ([UId])
GO
ALTER TABLE [ods].[AEDIValidationEntityLog] CHECK CONSTRAINT [FK__AEDIValid__DocEn__22EE196B]
GO
ALTER TABLE [ods].[AEDIValidationEntityLog]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIValid__Valid__23E23DA4] FOREIGN KEY([ValidationId])
REFERENCES [ods].[AEDIValidationLog] ([UId])
GO
ALTER TABLE [ods].[AEDIValidationEntityLog] CHECK CONSTRAINT [FK__AEDIValid__Valid__23E23DA4]
GO
ALTER TABLE [ods].[AEDIValidationLog]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIValid__Valid__24D661DD] FOREIGN KEY([ValidationTypeId])
REFERENCES [ods].[AEDIValidationTypes] ([UId])
GO
ALTER TABLE [ods].[AEDIValidationLog] CHECK CONSTRAINT [FK__AEDIValid__Valid__24D661DD]
GO
ALTER TABLE [ods].[AEDIValidationLog]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIValid__Valid__25CA8616] FOREIGN KEY([ValidatorId])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[AEDIValidationLog] CHECK CONSTRAINT [FK__AEDIValid__Valid__25CA8616]
GO
ALTER TABLE [ods].[AssetType]  WITH NOCHECK ADD  CONSTRAINT [FK_AssetClass_Code_AssetType] FOREIGN KEY([AssetClass_Code])
REFERENCES [ods].[AssetClass] ([Code])
GO
ALTER TABLE [ods].[AssetType] CHECK CONSTRAINT [FK_AssetClass_Code_AssetType]
GO
ALTER TABLE [ods].[BCBiotechHub]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_BCBiotechHub] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[BCBiotechHub] CHECK CONSTRAINT [FK_Country_Code_BCBiotechHub]
GO
ALTER TABLE [ods].[BCBiotechHub_To_State]  WITH NOCHECK ADD  CONSTRAINT [FK_BCBiotechHub_Code_BCBiotechHub_to_State] FOREIGN KEY([BCBiotechHub_Code])
REFERENCES [ods].[BCBiotechHub] ([Code])
GO
ALTER TABLE [ods].[BCBiotechHub_To_State] CHECK CONSTRAINT [FK_BCBiotechHub_Code_BCBiotechHub_to_State]
GO
ALTER TABLE [ods].[BCBiotechHub_To_State]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_BCBiotechHub_to_State] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[BCBiotechHub_To_State] CHECK CONSTRAINT [FK_Country_Code_BCBiotechHub_to_State]
GO
ALTER TABLE [ods].[BCBiotechHub_To_State]  WITH NOCHECK ADD  CONSTRAINT [FK_State_Code_BCBiotechHub_to_State] FOREIGN KEY([State_Code])
REFERENCES [ods].[State] ([Code])
GO
ALTER TABLE [ods].[BCBiotechHub_To_State] CHECK CONSTRAINT [FK_State_Code_BCBiotechHub_to_State]
GO
ALTER TABLE [ods].[BusinessType]  WITH NOCHECK ADD  CONSTRAINT [FK_BusinessClass_Code_BusinessType] FOREIGN KEY([BusinessClass_Code])
REFERENCES [ods].[BusinessClass] ([Code])
GO
ALTER TABLE [ods].[BusinessType] CHECK CONSTRAINT [FK_BusinessClass_Code_BusinessType]
GO
ALTER TABLE [ods].[City]  WITH NOCHECK ADD  CONSTRAINT [FK_BiotechHUB_Code_City] FOREIGN KEY([BiotechHub_Code])
REFERENCES [ods].[BCBiotechHub] ([Code])
GO
ALTER TABLE [ods].[City] CHECK CONSTRAINT [FK_BiotechHUB_Code_City]
GO
ALTER TABLE [ods].[City]  WITH NOCHECK ADD  CONSTRAINT [FK_State_Code_City] FOREIGN KEY([State_Code])
REFERENCES [ods].[State] ([Code])
GO
ALTER TABLE [ods].[City] CHECK CONSTRAINT [FK_State_Code_City]
GO
ALTER TABLE [ods].[ClinicalPhase]  WITH NOCHECK ADD  CONSTRAINT [FK_ClinicalPhaseSubCategory_ClinicalPhase] FOREIGN KEY([SubCategory_Code])
REFERENCES [ods].[ClinicalPhaseSubCategory] ([Code])
GO
ALTER TABLE [ods].[ClinicalPhase] CHECK CONSTRAINT [FK_ClinicalPhaseSubCategory_ClinicalPhase]
GO
ALTER TABLE [ods].[ClinicalPhaseSubCategory]  WITH NOCHECK ADD  CONSTRAINT [FK_ClinicalPhaseCategory_ClinicalPhaseSubCategory] FOREIGN KEY([Category_Code])
REFERENCES [ods].[ClinicalPhaseCategory] ([Code])
GO
ALTER TABLE [ods].[ClinicalPhaseSubCategory] CHECK CONSTRAINT [FK_ClinicalPhaseCategory_ClinicalPhaseSubCategory]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_BCBiotechHub_Code_Company] FOREIGN KEY([BCBiotechHub_Code])
REFERENCES [ods].[BCBiotechHub] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_BCBiotechHub_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyCategory_Code_Company] FOREIGN KEY([CompanyCategory_Code])
REFERENCES [ods].[CompanyCategory] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_CompanyCategory_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyType_Code_Company] FOREIGN KEY([CompanyType_Code])
REFERENCES [ods].[CompanyType] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_CompanyType_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_Company] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_Country_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_ParentCompany_Code_Company] FOREIGN KEY([ParentCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_ParentCompany_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_TierId_Company] FOREIGN KEY([TierId])
REFERENCES [ods].[Tier] ([TierId])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_TierId_Company]
GO
ALTER TABLE [ods].[Company_to_BusinessType]  WITH NOCHECK ADD  CONSTRAINT [FK_BusinessType_Code_Company_to_BusinessType] FOREIGN KEY([BusinessType_Code])
REFERENCES [ods].[BusinessType] ([Code])
GO
ALTER TABLE [ods].[Company_to_BusinessType] CHECK CONSTRAINT [FK_BusinessType_Code_Company_to_BusinessType]
GO
ALTER TABLE [ods].[Company_to_BusinessType]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Company_to_BusinessType] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Company_to_BusinessType] NOCHECK CONSTRAINT [FK_Company_Code_Company_to_BusinessType]
GO
ALTER TABLE [ods].[Company_to_CompanyGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Company_to_CompanyGroup] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Company_to_CompanyGroup] NOCHECK CONSTRAINT [FK_Company_Code_Company_to_CompanyGroup]
GO
ALTER TABLE [ods].[Company_to_CompanyGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyGroup_Code_Company_to_CompanyGroup] FOREIGN KEY([CompanyGroup_Code])
REFERENCES [ods].[CompanyGroup] ([Code])
GO
ALTER TABLE [ods].[Company_to_CompanyGroup] CHECK CONSTRAINT [FK_CompanyGroup_Code_Company_to_CompanyGroup]
GO
ALTER TABLE [ods].[CompanyMarketCap]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyGroup_Code_CompanyMarketCap] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyMarketCap] NOCHECK CONSTRAINT [FK_CompanyGroup_Code_CompanyMarketCap]
GO
ALTER TABLE [ods].[CompanyNameHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_CurrentCompanyCode_ODS] FOREIGN KEY([CurrentCompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyNameHistory] NOCHECK CONSTRAINT [FK_CurrentCompanyCode_ODS]
GO
ALTER TABLE [ods].[CompanyNameHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_PreviousCompanyCode_ODS] FOREIGN KEY([PreviousCompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyNameHistory] NOCHECK CONSTRAINT [FK_PreviousCompanyCode_ODS]
GO
ALTER TABLE [ods].[CompanyReviewHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_CompanyReviewHistory] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyReviewHistory] NOCHECK CONSTRAINT [FK_Company_Code_CompanyReviewHistory]
GO
ALTER TABLE [ods].[CompanyUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_CompanyUrlHistory] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyUrlHistory] NOCHECK CONSTRAINT [FK_Company_Code_CompanyUrlHistory]
GO
ALTER TABLE [ods].[Country]  WITH NOCHECK ADD  CONSTRAINT [FK_SubRegion_Code_Country] FOREIGN KEY([SubRegion_Code])
REFERENCES [ods].[SubRegion] ([Code])
GO
ALTER TABLE [ods].[Country] CHECK CONSTRAINT [FK_SubRegion_Code_Country]
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure]  WITH NOCHECK ADD  CONSTRAINT [FK_CommercialPaymentStructure_Code_Deal_to_CommercialPaymentStructure] FOREIGN KEY([CommercialPaymentStructure_Code])
REFERENCES [ods].[CommercialPaymentStructure] ([Code])
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT [FK_CommercialPaymentStructure_Code_Deal_to_CommercialPaymentStructure]
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_CommercialPaymentStructure] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_CommercialPaymentStructure]
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure]  WITH NOCHECK ADD  CONSTRAINT [FK_DealCode_Deal_to_CommercialPaymentStructure] FOREIGN KEY([DealCode])
REFERENCES [ods].[Deals] ([Code])
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT [FK_DealCode_Deal_to_CommercialPaymentStructure]
GO
ALTER TABLE [ods].[Deal_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Deal_to_Company] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Company] NOCHECK CONSTRAINT [FK_Company_Code_Deal_to_Company]
GO
ALTER TABLE [ods].[Deal_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyRole_Code_Deal_to_Company] FOREIGN KEY([CompanyRole_Code])
REFERENCES [ods].[CompanyDealRole] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Company] CHECK CONSTRAINT [FK_CompanyRole_Code_Deal_to_Company]
GO
ALTER TABLE [ods].[Deal_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Deal_Code_Deal_to_Company] FOREIGN KEY([Deal_Code])
REFERENCES [ods].[Deals] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Company] CHECK CONSTRAINT [FK_Deal_Code_Deal_to_Company]
GO
ALTER TABLE [ods].[Deal_to_Geography]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_Deal_to_Geography] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT [FK_Country_Code_Deal_to_Geography]
GO
ALTER TABLE [ods].[Deal_to_Geography]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_Geography] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_Geography]
GO
ALTER TABLE [ods].[Deal_to_Geography]  WITH NOCHECK ADD  CONSTRAINT [FK_Region_Code_Deal_to_Geography] FOREIGN KEY([Region_Code])
REFERENCES [ods].[Region] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT [FK_Region_Code_Deal_to_Geography]
GO
ALTER TABLE [ods].[Deal_to_Geography]  WITH NOCHECK ADD  CONSTRAINT [FK_SubRegion_Code_Deal_to_Geography] FOREIGN KEY([SubRegion_Code])
REFERENCES [ods].[SubRegion] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT [FK_SubRegion_Code_Deal_to_Geography]
GO
ALTER TABLE [ods].[Deal_to_MechanismOfAction]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_MechanismOfAction] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_MechanismOfAction] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_MechanismOfAction]
GO
ALTER TABLE [ods].[Deal_to_MechanismOfAction]  WITH NOCHECK ADD  CONSTRAINT [FK_MechanismOfAction_Code_Deal_to_MechanismOfAction] FOREIGN KEY([MechanismOfAction_Code])
REFERENCES [ods].[MechanismOfAction] ([Code])
GO
ALTER TABLE [ods].[Deal_to_MechanismOfAction] CHECK CONSTRAINT [FK_MechanismOfAction_Code_Deal_to_MechanismOfAction]
GO
ALTER TABLE [ods].[Deal_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_MolecularTarget] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_MolecularTarget] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_MolecularTarget]
GO
ALTER TABLE [ods].[Deal_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTarget_Code_Deal_to_MolecularTarget] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [ods].[MolecularTarget] ([Code])
GO
ALTER TABLE [ods].[Deal_to_MolecularTarget] CHECK CONSTRAINT [FK_MolecularTarget_Code_Deal_to_MolecularTarget]
GO
ALTER TABLE [ods].[Deal_to_PartnershipScope]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_PartnershipScope] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_PartnershipScope] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_PartnershipScope]
GO
ALTER TABLE [ods].[Deal_to_PartnershipScope]  WITH NOCHECK ADD  CONSTRAINT [FK_PartnershipScope_Code_Deal_to_PartnershipScope] FOREIGN KEY([PartnershipScope_Code])
REFERENCES [ods].[PartnershipScope] ([Code])
GO
ALTER TABLE [ods].[Deal_to_PartnershipScope] CHECK CONSTRAINT [FK_PartnershipScope_Code_Deal_to_PartnershipScope]
GO
ALTER TABLE [ods].[Deal_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_Product] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Product] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_Product]
GO
ALTER TABLE [ods].[Deal_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_Deal_to_Product] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Product] CHECK CONSTRAINT [FK_Product_Code_Deal_to_Product]
GO
ALTER TABLE [ods].[Deal_to_StandardIndication]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_StandardIndication] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_StandardIndication] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_StandardIndication]
GO
ALTER TABLE [ods].[Deal_to_StandardIndication]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndication_Code_Deal_to_StandardIndication] FOREIGN KEY([StandardIndication_Code])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[Deal_to_StandardIndication] CHECK CONSTRAINT [FK_StandardIndication_Code_Deal_to_StandardIndication]
GO
ALTER TABLE [ods].[Deal_to_TherapeuticModality]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_TherapeuticModality] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_TherapeuticModality] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_TherapeuticModality]
GO
ALTER TABLE [ods].[Deal_to_TherapeuticModality]  WITH NOCHECK ADD  CONSTRAINT [FK_TherapeuticModality_Code_Deal_to_TherapeuticModality] FOREIGN KEY([TherapeuticModality_Code])
REFERENCES [ods].[TherapeuticModality] ([Code])
GO
ALTER TABLE [ods].[Deal_to_TherapeuticModality] CHECK CONSTRAINT [FK_TherapeuticModality_Code_Deal_to_TherapeuticModality]
GO
ALTER TABLE [ods].[DealAsset_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_DealAsset_to_Company] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_Company] NOCHECK CONSTRAINT [FK_Company_Code_DealAsset_to_Company]
GO
ALTER TABLE [ods].[DealAsset_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyDealRole_Code_DealAsset_to_Company] FOREIGN KEY([CompanyDealRole_Code])
REFERENCES [ods].[CompanyDealRole] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_Company] CHECK CONSTRAINT [FK_CompanyDealRole_Code_DealAsset_to_Company]
GO
ALTER TABLE [ods].[DealAsset_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_DealAsset_to_Company] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_Company] CHECK CONSTRAINT [FK_DealAsset_Code_DealAsset_to_Company]
GO
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAssetCode_DealAsset_to_DiseaseCategory] FOREIGN KEY([DealAssetCode])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] CHECK CONSTRAINT [FK_DealAssetCode_DealAsset_to_DiseaseCategory]
GO
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_DealAsset_to_DiseaseCategory] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [ods].[DiseaseCategory_BU_02_21_2023] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] CHECK CONSTRAINT [FK_DiseaseCategoryCode_DealAsset_to_DiseaseCategory]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_AssetType_Code_DealAssets] FOREIGN KEY([AssetType_Code])
REFERENCES [ods].[AssetType] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_AssetType_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_Deal_Code_DealAssets] FOREIGN KEY([Deal_Code])
REFERENCES [ods].[Deals] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_Deal_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_DealType_Code_DealAssets] FOREIGN KEY([DealType_Code])
REFERENCES [ods].[DealType] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_DealType_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_DrugDevelopmentScope_Code_DealAssets] FOREIGN KEY([DrugDevelopmentScope_Code])
REFERENCES [ods].[DrugDevelopmentScope] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_DrugDevelopmentScope_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_MaxProductStatus_Code_DealAssets] FOREIGN KEY([MaxProductStatus_Code])
REFERENCES [ods].[ClinicalPhase] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_MaxProductStatus_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_RareOrphanIntent_Code_DealAssets] FOREIGN KEY([RareOrphanIntent_Code])
REFERENCES [ods].[RareOrphanIntent] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_RareOrphanIntent_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_TrialStatus_Code_DealAssets] FOREIGN KEY([TrialStatus_Code])
REFERENCES [ods].[TrialStatus] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_TrialStatus_Code_DealAssets]
GO
ALTER TABLE [ods].[DealDocuments]  WITH NOCHECK ADD  CONSTRAINT [FK_DealEventCode_DealDocuments] FOREIGN KEY([DealEventCode])
REFERENCES [ods].[DealEvent] ([Code])
GO
ALTER TABLE [ods].[DealDocuments] CHECK CONSTRAINT [FK_DealEventCode_DealDocuments]
GO
ALTER TABLE [ods].[DealDocumentText]  WITH NOCHECK ADD  CONSTRAINT [FK_DealDocument_Code_DealDocumentText] FOREIGN KEY([DealDocument_Code])
REFERENCES [ods].[DealDocuments] ([Code])
GO
ALTER TABLE [ods].[DealDocumentText] CHECK CONSTRAINT [FK_DealDocument_Code_DealDocumentText]
GO
ALTER TABLE [ods].[DealEvent]  WITH NOCHECK ADD  CONSTRAINT [FK_Deal_Code_DealEvent] FOREIGN KEY([Deal_Code])
REFERENCES [ods].[Deals] ([Code])
GO
ALTER TABLE [ods].[DealEvent] CHECK CONSTRAINT [FK_Deal_Code_DealEvent]
GO
ALTER TABLE [ods].[DealEvent]  WITH NOCHECK ADD  CONSTRAINT [FK_EventType_Code_DealEvent] FOREIGN KEY([EventType_Code])
REFERENCES [ods].[DealEventType] ([Code])
GO
ALTER TABLE [ods].[DealEvent] CHECK CONSTRAINT [FK_EventType_Code_DealEvent]
GO
ALTER TABLE [ods].[DealEventType_to_Classifier]  WITH NOCHECK ADD  CONSTRAINT [FK_DealEventClassifierCode_Deal_Code_DealEventType_to_Classifier] FOREIGN KEY([DealEventClassifierCode])
REFERENCES [ods].[DealEventClassfier] ([Code])
GO
ALTER TABLE [ods].[DealEventType_to_Classifier] CHECK CONSTRAINT [FK_DealEventClassifierCode_Deal_Code_DealEventType_to_Classifier]
GO
ALTER TABLE [ods].[Deals]  WITH NOCHECK ADD  CONSTRAINT [FK_Exclusivity_Code_Deals] FOREIGN KEY([Exclusivity_Code])
REFERENCES [ods].[DealExclusivity] ([Code])
GO
ALTER TABLE [ods].[Deals] CHECK CONSTRAINT [FK_Exclusivity_Code_Deals]
GO
ALTER TABLE [ods].[Deals]  WITH NOCHECK ADD  CONSTRAINT [FK_Status_Code_Deals] FOREIGN KEY([Status_Code])
REFERENCES [ods].[DealStatus] ([Code])
GO
ALTER TABLE [ods].[Deals] CHECK CONSTRAINT [FK_Status_Code_Deals]
GO
ALTER TABLE [ods].[Deals]  WITH NOCHECK ADD  CONSTRAINT [FK_TerminationReason_Code_Deals] FOREIGN KEY([TerminationReason_Code])
REFERENCES [ods].[DealTerminationReason] ([Code])
GO
ALTER TABLE [ods].[Deals] CHECK CONSTRAINT [FK_TerminationReason_Code_Deals]
GO
ALTER TABLE [ods].[DealType]  WITH NOCHECK ADD  CONSTRAINT [FK_DealClass_Code_DealType] FOREIGN KEY([DealClass_Code])
REFERENCES [ods].[DealClass] ([Code])
GO
ALTER TABLE [ods].[DealType] CHECK CONSTRAINT [FK_DealClass_Code_DealType]
GO
ALTER TABLE [ods].[DiseaseCategorySynonym]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategorySynonym] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [ods].[DiseaseCategory] ([Code])
GO
ALTER TABLE [ods].[DiseaseCategorySynonym] CHECK CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategorySynonym]
GO
ALTER TABLE [ods].[DiseaseCategoryUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategoryUrlHistory] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [ods].[DiseaseCategory] ([Code])
GO
ALTER TABLE [ods].[DiseaseCategoryUrlHistory] CHECK CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategoryUrlHistory]
GO
ALTER TABLE [ods].[DocumentInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_CurrencyCode_DocumentInfo] FOREIGN KEY([CurrencyCode])
REFERENCES [ods].[Currency] ([Code])
GO
ALTER TABLE [ods].[DocumentInfo] CHECK CONSTRAINT [FK_CurrencyCode_DocumentInfo]
GO
ALTER TABLE [ods].[DocumentInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_DealEventCode_DocumentInfo] FOREIGN KEY([DealEventCode])
REFERENCES [ods].[DealEvent] ([Code])
GO
ALTER TABLE [ods].[DocumentInfo] CHECK CONSTRAINT [FK_DealEventCode_DocumentInfo]
GO
ALTER TABLE [ods].[DocumentInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_DocInputTextCode_DocumentInfo] FOREIGN KEY([DocInputTextCode])
REFERENCES [ods].[DocInputText] ([Code])
GO
ALTER TABLE [ods].[DocumentInfo] CHECK CONSTRAINT [FK_DocInputTextCode_DocumentInfo]
GO
ALTER TABLE [ods].[Earnings]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Earnings] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Earnings] NOCHECK CONSTRAINT [FK_Company_Code_Earnings]
GO
ALTER TABLE [ods].[Earnings]  WITH NOCHECK ADD  CONSTRAINT [FK_Currency_Code_Earnings] FOREIGN KEY([Currency_Code])
REFERENCES [ods].[Currency] ([Code])
GO
ALTER TABLE [ods].[Earnings] CHECK CONSTRAINT [FK_Currency_Code_Earnings]
GO
ALTER TABLE [ods].[Earnings]  WITH NOCHECK ADD  CONSTRAINT [FK_FiscalPeriod_Code_Earnings] FOREIGN KEY([FiscalPeriod_Code])
REFERENCES [ods].[FiscalPeriod] ([Code])
GO
ALTER TABLE [ods].[Earnings] CHECK CONSTRAINT [FK_FiscalPeriod_Code_Earnings]
GO
ALTER TABLE [ods].[Financing_to_Financier]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Financing_to_Financier] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Financing_to_Financier] NOCHECK CONSTRAINT [FK_Company_Code_Financing_to_Financier]
GO
ALTER TABLE [ods].[Financing_to_Financier]  WITH NOCHECK ADD  CONSTRAINT [FK_Financing_Code_Financing_to_Financier] FOREIGN KEY([Financing_Code])
REFERENCES [ods].[Financings] ([Code])
GO
ALTER TABLE [ods].[Financing_to_Financier] CHECK CONSTRAINT [FK_Financing_Code_Financing_to_Financier]
GO
ALTER TABLE [ods].[Financings]  WITH NOCHECK ADD  CONSTRAINT [FK_Currency_Code_Financings] FOREIGN KEY([Currency_Code])
REFERENCES [ods].[Currency] ([Code])
GO
ALTER TABLE [ods].[Financings] CHECK CONSTRAINT [FK_Currency_Code_Financings]
GO
ALTER TABLE [ods].[Financings]  WITH NOCHECK ADD  CONSTRAINT [FK_FinancingType_Code_Financings] FOREIGN KEY([FinancingType_Code])
REFERENCES [ods].[FinancingType] ([Code])
GO
ALTER TABLE [ods].[Financings] CHECK CONSTRAINT [FK_FinancingType_Code_Financings]
GO
ALTER TABLE [ods].[Financings]  WITH NOCHECK ADD  CONSTRAINT [FK_ReceivingCompany_Code_Financings] FOREIGN KEY([ReceivingCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Financings] NOCHECK CONSTRAINT [FK_ReceivingCompany_Code_Financings]
GO
ALTER TABLE [ods].[FinancingType]  WITH NOCHECK ADD  CONSTRAINT [FK_FinancingTypeSubCategory_Code_FinancingType] FOREIGN KEY([FinancingTypeSubCategory_Code])
REFERENCES [ods].[FinancingTypeSubCategory] ([Code])
GO
ALTER TABLE [ods].[FinancingType] CHECK CONSTRAINT [FK_FinancingTypeSubCategory_Code_FinancingType]
GO
ALTER TABLE [ods].[FinancingTypeSubCategory]  WITH NOCHECK ADD  CONSTRAINT [FK_FinancingTypeCategory_Code_FinancingTypeSubCategory] FOREIGN KEY([FinancingTypeCategory_Code])
REFERENCES [ods].[FinancingTypeCategory] ([Code])
GO
ALTER TABLE [ods].[FinancingTypeSubCategory] CHECK CONSTRAINT [FK_FinancingTypeCategory_Code_FinancingTypeSubCategory]
GO
ALTER TABLE [ods].[HotTopic_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_HotTopic_to_Company] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Company] NOCHECK CONSTRAINT [FK_Company_Code_HotTopic_to_Company]
GO
ALTER TABLE [ods].[HotTopic_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company] FOREIGN KEY([HotTopic_Code])
REFERENCES [ods].[HotTopic] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Company] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company]
GO
ALTER TABLE [ods].[HotTopic_to_Indication]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication] FOREIGN KEY([HotTopic_Code])
REFERENCES [ods].[HotTopic] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Indication] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication]
GO
ALTER TABLE [ods].[HotTopic_to_Indication]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication] FOREIGN KEY([StandardIndication_Code])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Indication] CHECK CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication]
GO
ALTER TABLE [ods].[HotTopic_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product] FOREIGN KEY([HotTopic_Code])
REFERENCES [ods].[HotTopic] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Product] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product]
GO
ALTER TABLE [ods].[HotTopic_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_HotTopic_to_Product] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Product] CHECK CONSTRAINT [FK_Product_Code_HotTopic_to_Product]
GO
ALTER TABLE [ods].[HotTopic_to_Target]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target] FOREIGN KEY([HotTopic_Code])
REFERENCES [ods].[HotTopic] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Target] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target]
GO
ALTER TABLE [ods].[HotTopic_to_Target]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [ods].[MolecularTarget] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Target] CHECK CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target]
GO
ALTER TABLE [ods].[IndicationDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_IndicationDetail] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[IndicationDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_IndicationDetail]
GO
ALTER TABLE [ods].[IPOs]  WITH NOCHECK ADD  CONSTRAINT [FK_StockTicker_Code_IPOs] FOREIGN KEY([StockTicker_Code])
REFERENCES [ods].[StockTicker] ([Code])
GO
ALTER TABLE [ods].[IPOs] CHECK CONSTRAINT [FK_StockTicker_Code_IPOs]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_License] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_DealAsset_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_License] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_IndicationDetailCode_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_InLicenseCompany_Code_License] FOREIGN KEY([InLicenseCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[License] NOCHECK CONSTRAINT [FK_InLicenseCompany_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_OutLicenseCompany_Code_License] FOREIGN KEY([OutLicenseCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[License] NOCHECK CONSTRAINT [FK_OutLicenseCompany_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_PartnershipTerms_Code_License] FOREIGN KEY([PartnershipTerms_Code])
REFERENCES [ods].[PartnershipTerms] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_PartnershipTerms_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_License] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_PipelineCode_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_License] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_Product_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetail_Code_License] FOREIGN KEY([ProductDetail_Code])
REFERENCES [ods].[ProductDetail] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_ProductDetail_Code_License]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [ods].[DiseaseCategory] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_LicenseDetail] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_IndicationDetailCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_LicenseCode_LicenseDetail] FOREIGN KEY([LicenseCode])
REFERENCES [ods].[License] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_LicenseCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineDetailCode_LicenseDetail] FOREIGN KEY([PipelineDetailCode])
REFERENCES [ods].[PipelineDetail] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_PipelineDetailCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_LicenseDetail] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_LicenseDetail]
GO
ALTER TABLE [ods].[LinkifyIgnoreOriginCompany]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyCode_LinkifyIgnoreOriginCompany] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[LinkifyIgnoreOriginCompany] NOCHECK CONSTRAINT [FK_CompanyCode_LinkifyIgnoreOriginCompany]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneIntent_Milestone] FOREIGN KEY([MilestoneIntent_Code])
REFERENCES [ods].[MilestoneIntent] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_MilestoneIntent_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneStatus_Milestone] FOREIGN KEY([MilestoneStatus_Code])
REFERENCES [ods].[MilestoneStatus] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_MilestoneStatus_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneType_Milestone] FOREIGN KEY([MilestoneType_Code])
REFERENCES [ods].[MilestoneType] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_MilestoneType_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_Milestone] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_PipelineCode_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_Milestone] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_Product_Code_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetail_Code_Milestone] FOREIGN KEY([ProductDetail_Code])
REFERENCES [ods].[ProductDetail] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_ProductDetail_Code_Milestone]
GO
ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneIntent_Code_MilestoneType_to_MilestoneIntent] FOREIGN KEY([MilestoneIntent_Code])
REFERENCES [ods].[MilestoneIntent] ([Code])
GO
ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent] CHECK CONSTRAINT [FK_MilestoneIntent_Code_MilestoneType_to_MilestoneIntent]
GO
ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneType_Code_MilestoneType_to_MilestoneIntent] FOREIGN KEY([MilestoneType_Code])
REFERENCES [ods].[MilestoneType] ([Code])
GO
ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent] CHECK CONSTRAINT [FK_MilestoneType_Code_MilestoneType_to_MilestoneIntent]
GO
ALTER TABLE [ods].[MLPrediction]  WITH NOCHECK ADD  CONSTRAINT [FK_MLPrediction_EntityTypeCode] FOREIGN KEY([EntityTypeCode])
REFERENCES [ods].[EntityType] ([Code])
GO
ALTER TABLE [ods].[MLPrediction] CHECK CONSTRAINT [FK_MLPrediction_EntityTypeCode]
GO
ALTER TABLE [ods].[MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetFamily_MolecularTarget] FOREIGN KEY([MolecularTargetFamily_Code])
REFERENCES [ods].[MolecularTargetFamily] ([Code])
GO
ALTER TABLE [ods].[MolecularTarget] CHECK CONSTRAINT [FK_MolecularTargetFamily_MolecularTarget]
GO
ALTER TABLE [ods].[MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTarget] FOREIGN KEY([MolecularTargetFamily_Code])
REFERENCES [ods].[MolecularTargetFamily] ([Code])
GO
ALTER TABLE [ods].[MolecularTarget] CHECK CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTarget]
GO
ALTER TABLE [ods].[MolecularTargetFamilyUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTargetFamilyUrlHistory] FOREIGN KEY([MolecularTargetFamilyCode])
REFERENCES [ods].[MolecularTargetFamily] ([Code])
GO
ALTER TABLE [ods].[MolecularTargetFamilyUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTargetFamilyUrlHistory]
GO
ALTER TABLE [ods].[MolecularTargetUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetCode_MolecularTargetUrlHistory] FOREIGN KEY([MolecularTargetCode])
REFERENCES [ods].[MolecularTarget] ([Code])
GO
ALTER TABLE [ods].[MolecularTargetUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetCode_MolecularTargetUrlHistory]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Pipeline] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Pipeline] NOCHECK CONSTRAINT [FK_Company_Code_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_Pipeline] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_IndicationDetailCode_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_PhaseOfDevelopmentCode_Pipeline] FOREIGN KEY([PhaseOfDevelopment_Code])
REFERENCES [ods].[ClinicalPhase] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_PhaseOfDevelopmentCode_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode_ODS] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_ProductCode_ODS]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetailCode_Pipeline] FOREIGN KEY([ProductDetail_Code])
REFERENCES [ods].[ProductDetail] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_ProductDetailCode_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionCode_Pipeline] FOREIGN KEY([RegulatoryDesignationRegionCode])
REFERENCES [ods].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionCode_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_RouteOfAdministrationCode_Pipeline] FOREIGN KEY([RouteOfAdministration_Code])
REFERENCES [ods].[RouteOfAdministration] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_RouteOfAdministrationCode_Pipeline]
GO
ALTER TABLE [ods].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail] FOREIGN KEY([PhaseOfDevelopment_Code])
REFERENCES [ods].[ClinicalPhase] ([Code])
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail]
GO
ALTER TABLE [ods].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineDetail] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineDetail]
GO
ALTER TABLE [ods].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail] FOREIGN KEY([RegulatoryDesignationRegionCode])
REFERENCES [ods].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail]
GO
ALTER TABLE [ods].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail] FOREIGN KEY([RouteOfAdministration_Code])
REFERENCES [ods].[RouteOfAdministration] ([Code])
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail]
GO
ALTER TABLE [ods].[PipelineMLPrediction]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineMLPrediction_MLPredictionCode] FOREIGN KEY([MLPredictionCode])
REFERENCES [ods].[MLPrediction] ([Code])
GO
ALTER TABLE [ods].[PipelineMLPrediction] CHECK CONSTRAINT [FK_PipelineMLPrediction_MLPredictionCode]
GO
ALTER TABLE [ods].[PipelineMLPrediction]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineMLPrediction_PipelineRecordId] FOREIGN KEY([PipelineRecordId])
REFERENCES [ods].[AEDIPipelineRecord] ([UId])
ON DELETE CASCADE
GO
ALTER TABLE [ods].[PipelineMLPrediction] CHECK CONSTRAINT [FK_PipelineMLPrediction_PipelineRecordId]
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail]
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail] FOREIGN KEY([RegulatoryDesignationCode])
REFERENCES [ods].[RegulatoryDesignation] ([Code])
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail]
GO
ALTER TABLE [ods].[PipelineUrl]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_to_PipelineUrl] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[PipelineUrl] NOCHECK CONSTRAINT [FK_Company_to_PipelineUrl]
GO
ALTER TABLE [ods].[PipelineUrl]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineUrl_ValidatorId] FOREIGN KEY([ValidatorId])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[PipelineUrl] CHECK CONSTRAINT [FK_PipelineUrl_ValidatorId]
GO
ALTER TABLE [ods].[PipelineUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_to_PipelineUrlHistory] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[PipelineUrlHistory] NOCHECK CONSTRAINT [FK_Company_to_PipelineUrlHistory]
GO
ALTER TABLE [ods].[PipelineUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineUrlHistory_ValidatorId] FOREIGN KEY([ValidatorId])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[PipelineUrlHistory] CHECK CONSTRAINT [FK_PipelineUrlHistory_ValidatorId]
GO
ALTER TABLE [ods].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_OriginatorCompany_Code_Product] FOREIGN KEY([OriginatorCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Product] NOCHECK CONSTRAINT [FK_OriginatorCompany_Code_Product]
GO
ALTER TABLE [ods].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_OwnerCompany_Code_Product] FOREIGN KEY([OwnerCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Product] NOCHECK CONSTRAINT [FK_OwnerCompany_Code_Product]
GO
ALTER TABLE [ods].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_PartnerCompany_Code_Product] FOREIGN KEY([PartnerCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Product] NOCHECK CONSTRAINT [FK_PartnerCompany_Code_Product]
GO
ALTER TABLE [ods].[Product_to_MechanismOfAction]  WITH NOCHECK ADD  CONSTRAINT [FK_MechanismOfAction_Product_to_MechanismOfAction] FOREIGN KEY([MechanismOfAction_Code])
REFERENCES [ods].[MechanismOfAction] ([Code])
GO
ALTER TABLE [ods].[Product_to_MechanismOfAction] CHECK CONSTRAINT [FK_MechanismOfAction_Product_to_MechanismOfAction]
GO
ALTER TABLE [ods].[Product_to_MechanismOfAction]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Product_to_MechanismOfAction] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Product_to_MechanismOfAction] CHECK CONSTRAINT [FK_Product_Product_to_MechanismOfAction]
GO
ALTER TABLE [ods].[Product_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTarget_Product_to_MolecularTarget] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [ods].[MolecularTarget] ([Code])
GO
ALTER TABLE [ods].[Product_to_MolecularTarget] CHECK CONSTRAINT [FK_MolecularTarget_Product_to_MolecularTarget]
GO
ALTER TABLE [ods].[Product_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Product_to_MolecularTarget] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Product_to_MolecularTarget] CHECK CONSTRAINT [FK_Product_Product_to_MolecularTarget]
GO
ALTER TABLE [ods].[Product_to_StandardIndication]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_Product_to_StandardIndication] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Product_to_StandardIndication] CHECK CONSTRAINT [FK_Product_Code_Product_to_StandardIndication]
GO
ALTER TABLE [ods].[Product_to_TherapeuticModality]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Product_to_TherapeuticModality] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Product_to_TherapeuticModality] CHECK CONSTRAINT [FK_Product_Product_to_TherapeuticModality]
GO
ALTER TABLE [ods].[Product_to_TherapeuticModality]  WITH NOCHECK ADD  CONSTRAINT [FK_TherapeuticModality_Product_to_TherapeuticModality] FOREIGN KEY([TherapeuticModality_Code])
REFERENCES [ods].[TherapeuticModality] ([Code])
GO
ALTER TABLE [ods].[Product_to_TherapeuticModality] CHECK CONSTRAINT [FK_TherapeuticModality_Product_to_TherapeuticModality]
GO
ALTER TABLE [ods].[ProductDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_ProductDetail] FOREIGN KEY([StandardIndication_Code])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[ProductDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_ProductDetail]
GO
ALTER TABLE [ods].[ProductNames]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[ProductNames] CHECK CONSTRAINT [FK_Product_Code]
GO
ALTER TABLE [ods].[ProductNames]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductNameType_Code] FOREIGN KEY([ProductNameType_Code])
REFERENCES [ods].[ProductNameTypes] ([Code])
GO
ALTER TABLE [ods].[ProductNames] CHECK CONSTRAINT [FK_ProductNameType_Code]
GO
ALTER TABLE [ods].[ProductUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode_ProductUrlHistory] FOREIGN KEY([ProductCode])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[ProductUrlHistory] CHECK CONSTRAINT [FK_ProductCode_ProductUrlHistory]
GO
ALTER TABLE [ods].[RegulationRegionCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_CountryCode_RegulationRegionCountry] FOREIGN KEY([CountryCode])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[RegulationRegionCountry] CHECK CONSTRAINT [FK_CountryCode_RegulationRegionCountry]
GO
ALTER TABLE [ods].[RegulationRegionCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionCode_RegulationRegionCountry] FOREIGN KEY([RegulatoryDesignationRegionCode])
REFERENCES [ods].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [ods].[RegulationRegionCountry] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionCode_RegulationRegionCountry]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_RegulatoryDesignation] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_PipelineCode_RegulatoryDesignation]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetail_Code_RegulatoryDesignation] FOREIGN KEY([ProductDetail_Code])
REFERENCES [ods].[ProductDetail] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_ProductDetail_Code_RegulatoryDesignation]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegion_Code_RegulatoryDesignation] FOREIGN KEY([RegulatoryDesignationRegion_Code])
REFERENCES [ods].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_RegulatoryDesignationRegion_Code_RegulatoryDesignation]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionTypeCode_RegulatoryDesignation] FOREIGN KEY([RegulatoryDesignationRegionTypeCode])
REFERENCES [ods].[RegulatoryDesignationRegionType] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionTypeCode_RegulatoryDesignation]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationType_Code_RegulatoryDesignation] FOREIGN KEY([RegulatoryDesignationType_Code])
REFERENCES [ods].[RegulatoryDesignationType] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_RegulatoryDesignationType_Code_RegulatoryDesignation]
GO
ALTER TABLE [ods].[StandardIndication]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_StandardIndication] FOREIGN KEY([DiseaseCategory_Code])
REFERENCES [ods].[DiseaseCategory] ([Code])
GO
ALTER TABLE [ods].[StandardIndication] CHECK CONSTRAINT [FK_DiseaseCategoryCode_StandardIndication]
GO
ALTER TABLE [ods].[StandardIndicationSynonym]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_StandardIndicationSynonym] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[StandardIndicationSynonym] CHECK CONSTRAINT [FK_StandardIndicationCode_StandardIndicationSynonym]
GO
ALTER TABLE [ods].[StandardIndicationUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_StandardIndicationUrlHistory] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[StandardIndicationUrlHistory] CHECK CONSTRAINT [FK_StandardIndicationCode_StandardIndicationUrlHistory]
GO
ALTER TABLE [ods].[State]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_State] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[State] CHECK CONSTRAINT [FK_Country_Code_State]
GO
ALTER TABLE [ods].[StockFundamentals]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_StockFundamentals] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[StockFundamentals] NOCHECK CONSTRAINT [FK_Company_Code_StockFundamentals]
GO
ALTER TABLE [ods].[StockFundamentals]  WITH NOCHECK ADD  CONSTRAINT [FK_StockTicker_Code_StockFundamentals] FOREIGN KEY([StockTicker_Code])
REFERENCES [ods].[StockTicker] ([Code])
GO
ALTER TABLE [ods].[StockFundamentals] CHECK CONSTRAINT [FK_StockTicker_Code_StockFundamentals]
GO
ALTER TABLE [ods].[Stocks]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Stocks] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Stocks] NOCHECK CONSTRAINT [FK_Company_Code_Stocks]
GO
ALTER TABLE [ods].[Stocks2]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Stocks2] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Stocks2] NOCHECK CONSTRAINT [FK_Company_Code_Stocks2]
GO
ALTER TABLE [ods].[StockSplits]  WITH NOCHECK ADD  CONSTRAINT [FK_StockTicker_Code_StockSplits] FOREIGN KEY([StockTicker_Code])
REFERENCES [ods].[StockTicker] ([Code])
GO
ALTER TABLE [ods].[StockSplits] CHECK CONSTRAINT [FK_StockTicker_Code_StockSplits]
GO
ALTER TABLE [ods].[StocksV32]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_StocksV32] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[StocksV32] NOCHECK CONSTRAINT [FK_Company_Code_StocksV32]
GO
ALTER TABLE [ods].[StockTicker]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_StockTicker] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[StockTicker] NOCHECK CONSTRAINT [FK_Company_Code_StockTicker]
GO
ALTER TABLE [ods].[StockTicker]  WITH NOCHECK ADD  CONSTRAINT [FK_StockExchange_Code_StockTicker] FOREIGN KEY([StockExchange_Code])
REFERENCES [ods].[StockExchange] ([Code])
GO
ALTER TABLE [ods].[StockTicker] CHECK CONSTRAINT [FK_StockExchange_Code_StockTicker]
GO
ALTER TABLE [ods].[SubRegion]  WITH NOCHECK ADD  CONSTRAINT [FK_Region_Code_SubRegion] FOREIGN KEY([Region_Code])
REFERENCES [ods].[Region] ([Code])
GO
ALTER TABLE [ods].[SubRegion] CHECK CONSTRAINT [FK_Region_Code_SubRegion]
GO
ALTER TABLE [ods].[ValidatorProductComparison]  WITH NOCHECK ADD  CONSTRAINT [FK_AgentCode_ValidatorProductComparison] FOREIGN KEY([AgentCode])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[ValidatorProductComparison] CHECK CONSTRAINT [FK_AgentCode_ValidatorProductComparison]
GO
ALTER TABLE [ods].[ValidatorProductComparison]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode_ValidatorProductComparison] FOREIGN KEY([ProductCode])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[ValidatorProductComparison] CHECK CONSTRAINT [FK_ProductCode_ValidatorProductComparison]
GO
