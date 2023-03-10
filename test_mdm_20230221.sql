USE [BCIQ_ODS]
GO
/****** Object:  Table [mdm].[AssetClass]    Script Date: 2/21/2023 12:15:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[AssetClass](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__AssetCla__A25C5AA61B855790] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[AssetType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[AssetType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[AssetClass_Code] [int] NOT NULL,
	[AssetClass_Name] [nvarchar](250) NULL,
	[AssetTypeID] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__AssetTyp__A25C5AA651FDE59A] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[BCBiotechHub]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[BCBiotechHub](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[BCBiotechHubID] [nvarchar](200) NULL,
	[Country_Code] [int] NULL,
	[Country_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__BCBiotec__A25C5AA684BE2A14] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[BCBiotechHub_To_State]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[BCBiotechHub_To_State](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [PK_BCBiotechHub_To_State] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[BusinessClass]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[BusinessClass](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CategoryTypeID] [nvarchar](250) NULL,
	[SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Business__A25C5AA6F2A2B25A] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[BusinessType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[BusinessType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CategoryID] [nvarchar](250) NULL,
	[BusinessClass_Code] [int] NOT NULL,
	[BusinessClass_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Business__A25C5AA64C458D87] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[City]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[City](
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
 CONSTRAINT [PK__City__A25C5AA6CAEFB9BC] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[ClinicalPhase]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[ClinicalPhase](
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
 CONSTRAINT [PK__Clinical__A25C5AA609BDC964] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[ClinicalPhaseCategory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[ClinicalPhaseCategory](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Clinical__A25C5AA6ADA7C239] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[ClinicalPhaseSubCategory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[ClinicalPhaseSubCategory](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[Category_Code] [int] NOT NULL,
	[Category_Name] [nvarchar](250) NULL,
	[SortOrder] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Clinical__A25C5AA6E0D6C9F6] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[CommercialPaymentStructure]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CommercialPaymentStructure](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CommercialPaymentStructureID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Commerci__A25C5AA6D4E08427] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Company]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Company](
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
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK__Company1__A25C5AA6B0435053] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Company_BU_02_05_2020]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Company_BU_02_05_2020](
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
	[InternalNotes] [nvarchar](1000) NULL,
	[Source] [varchar](100) NULL,
 CONSTRAINT [PK__Company__A25C5AA6844EFA8D] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Company_BU_03_01_2022]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Company_BU_03_01_2022](
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
	[InternalNotes] [nvarchar](1000) NULL,
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
	[ExcludeCrunchbaseFinancings] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Company_BU_04_19_2021]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Company_BU_04_19_2021](
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
	[InternalNotes] [nvarchar](1000) NULL,
	[CrunchbaseID] [nvarchar](100) NULL,
	[TierId] [int] NULL,
	[Source] [varchar](100) NULL,
	[AutoInclusion] [bit] NULL,
	[ManualInclusion] [bit] NULL,
	[ManualExclusion] [bit] NULL,
	[Archived] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Company_to_BusinessType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Company_to_BusinessType](
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
/****** Object:  Table [mdm].[Company_to_BusinessType_old]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Company_to_BusinessType_old](
	[Name] [nvarchar](250) NULL,
	[Code] [nvarchar](250) NOT NULL,
	[BusinessType_Code] [nvarchar](250) NULL,
	[BusinessType_Name] [nvarchar](250) NULL,
	[Company_Code] [nvarchar](250) NULL,
	[Company_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Company_to_CompanyGroup]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Company_to_CompanyGroup](
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
/****** Object:  Table [mdm].[CompanyCategory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyCategory](
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
/****** Object:  Table [mdm].[CompanyDealRole]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyDealRole](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CompanyDealRoleID] [nvarchar](200) NULL,
	[SortOrder] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__CompanyD__A25C5AA6FC878266] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[CompanyEventType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyEventType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__CompanyE__A25C5AA615E8558A] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[CompanyGroup]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyGroup](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__CompanyG__A25C5AA61FA937FD] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[CompanyMarketCap]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyMarketCap](
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
/****** Object:  Table [mdm].[CompanyNameHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyNameHistory](
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
/****** Object:  Table [mdm].[CompanyOwnershipStatus]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyOwnershipStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__CompanyO__A25C5AA6819ACB0B] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[CompanyReviewHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyReviewHistory](
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
/****** Object:  Table [mdm].[CompanyType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__CompanyT__A25C5AA6696C2145] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[CompanyUpdateHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyUpdateHistory](
	[UpdateId] [int] IDENTITY(1,1) NOT NULL,
	[UpdatedDateTime] [datetime] NOT NULL,
	[UpdatedUser] [varchar](60) NULL,
	[Notes] [nvarchar](1000) NULL,
 CONSTRAINT [PK_CompanyUpdateHistory] PRIMARY KEY CLUSTERED 
(
	[UpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[CompanyUrlHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CompanyUrlHistory](
	[Code] [int] NOT NULL,
	[CompanyCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Country]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Country](
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
 CONSTRAINT [PK__Country__A25C5AA6CDB1F45D] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Currency]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Currency](
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
 CONSTRAINT [PK__Currency__A25C5AA61EC99218] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[CurrencyExchangeRates]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[CurrencyExchangeRates](
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
/****** Object:  Table [mdm].[DailyIndices]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DailyIndices](
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
/****** Object:  Table [mdm].[Deal_to_CommercialPaymentStructure]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_CommercialPaymentStructure](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DealAsset_Code] [int] NOT NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[CommercialPaymentStructure_Code] [int] NOT NULL,
	[CommercialPaymentStructure_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[CommercialPmntNotes] [nvarchar](1000) NULL,
 CONSTRAINT [PK__Deal_to___A25C5AA61A8D4267] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deal_to_Company]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_Company](
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
 CONSTRAINT [PK__Deal_to___A25C5AA6A441C09E] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deal_to_Geography]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_Geography](
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
 CONSTRAINT [PK__Deal_to___A25C5AA6BAF06D9D] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deal_to_MechanismOfAction]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_MechanismOfAction](
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
 CONSTRAINT [PK__Deal_to___A25C5AA6C0A7514D] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deal_to_MolecularTarget]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_MolecularTarget](
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
 CONSTRAINT [PK__Deal_to___A25C5AA620678670] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deal_to_PartnershipScope]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_PartnershipScope](
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
 CONSTRAINT [PK__Deal_to___A25C5AA6625073E8] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deal_to_Product]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_Product](
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
 CONSTRAINT [PK__Deal_to___A25C5AA65F75B90D] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deal_to_StandardIndication]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_StandardIndication](
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
 CONSTRAINT [PK__Deal_to___A25C5AA63E213111] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deal_to_TherapeuticModality]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deal_to_TherapeuticModality](
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
 CONSTRAINT [PK__Deal_to___A25C5AA608D711F5] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealAsset_to_Company]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealAsset_to_Company](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[DealAsset_Code] [int] NOT NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[Company_Code] [int] NOT NULL,
	[Company_Name] [nvarchar](250) NULL,
	[CompanyDealRole_Code] [int] NOT NULL,
	[CompanyDealRole_Name] [nvarchar](250) NOT NULL,
	[Responsibilities] [varchar](4000) NOT NULL,
	[CompanyRank] [int] NULL,
	[MarketCap] [decimal](38, 0) NULL,
	[MarketCapDate] [datetime] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DealAsse__A25C5AA65BFDCC39] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealAssets]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealAssets](
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
 CONSTRAINT [PK__DealAsse__A25C5AA6A147409C] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealClass]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealClass](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealClassID] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DealClas__A25C5AA6E9D14121] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealDocuments]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealDocuments](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Deal_Code] [int] NOT NULL,
	[Deal_Name] [nvarchar](255) NOT NULL,
	[DealID] [int] NULL,
	[DocumentID] [int] NULL,
	[DocumentType_Code] [int] NOT NULL,
	[DocumentType_Name] [nvarchar](255) NOT NULL,
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
 CONSTRAINT [PK_DealDocuments_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealEvent]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealEvent](
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
 CONSTRAINT [PK__DealEven__A25C5AA6A99B90D0] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealEventType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealEventType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[EventTypeID] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DealEven__A25C5AA6B7CD02A3] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealExclusivity]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealExclusivity](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealExclusivityID] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DealExcl__A25C5AA6DB681C54] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deals]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deals](
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
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK__Deals__A25C5AA6F9704E83] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deals_11_02_2022]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deals_11_02_2022](
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
	[RDRegulatoryMilestonePayments] [decimal](38, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Deals_BU_11_13_2022]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Deals_BU_11_13_2022](
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
	[RDRegulatoryMilestonePayments] [decimal](38, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealStatus]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealStatusID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DealStat__A25C5AA6AA55E09F] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealTerminationReason]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealTerminationReason](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DealTerminationReasonID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DealTerm__A25C5AA64CF34BEC] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DealType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DealType](
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
 CONSTRAINT [PK__DealType__A25C5AA65AE40CED] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DiseaseCategory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DiseaseCategory](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DiseaseCategoryID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_DiseaseCategory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DiseaseCategorySynonym]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DiseaseCategorySynonym](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseCategoryCode] [int] NOT NULL,
	[DiseaseCategoryName] [nvarchar](250) NOT NULL,
	[Synonym] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](500) NULL,
 CONSTRAINT [PK_DiseaseCategorySynonym] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DiseaseCategoryUrlHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DiseaseCategoryUrlHistory](
	[Code] [int] NOT NULL,
	[DiseaseCategoryCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_DiseaseCategoryUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DocumentType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DocumentType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DocumentTypeAbbr] [varchar](3) NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[DrugDevelopmentScope]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[DrugDevelopmentScope](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[DrugDevelopmentScopeID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__DrugDeve__A25C5AA6B0414572] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Earnings]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Earnings](
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
 CONSTRAINT [PK__Earnings__A25C5AA660CAAE08] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[EventStatus]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[EventStatus](
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
/****** Object:  Table [mdm].[EventStatus_BU_02_15_2022]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[EventStatus_BU_02_15_2022](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[EventStatus] [nchar](50) NOT NULL,
	[EventGroup] [nchar](50) NOT NULL,
	[UseInReg] [bit] NOT NULL,
	[UseInClinS] [bit] NOT NULL,
	[UseInClinR] [bit] NOT NULL,
	[UseInMilestone] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[EventType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[EventType](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [nvarchar](50) NOT NULL,
	[EventGroup] [nvarchar](50) NOT NULL,
	[UseInReg] [bit] NOT NULL,
	[UseInClinS] [bit] NOT NULL,
	[UseInClinR] [bit] NOT NULL,
	[UseInDQ] [bit] NOT NULL,
	[IsMilestoneEvent] [bit] NOT NULL,
	[IsNonMilestoneEvent] [bit] NOT NULL,
 CONSTRAINT [PK__EventTyp__A25C5AA6CA665D87] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[EventType_BU_02_15_2022]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[EventType_BU_02_15_2022](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [nchar](50) NOT NULL,
	[EventGroup] [nchar](50) NOT NULL,
	[UseInReg] [bit] NOT NULL,
	[UseInClinS] [bit] NOT NULL,
	[UseInClinR] [bit] NOT NULL,
	[UseInDQ] [bit] NOT NULL,
	[IsMilestoneEvent] [bit] NOT NULL,
	[IsNonMilestoneEvent] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Financing_to_Financier]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Financing_to_Financier](
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
 CONSTRAINT [PK__Financin__A25C5AA6A4918941] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[FinancingCompletedStatus]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[FinancingCompletedStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Financin__A25C5AA65A4D774E] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[FinancingRole]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[FinancingRole](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Financin__A25C5AA61B071E7F] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Financings]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Financings](
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
	[SharePriceOrigCurr] [decimal](18, 4) NULL,
	[Updated_at] [datetime2](7) NULL,
	[Source] [varchar](100) NULL,
	[InternalNotes] [nvarchar](max) NULL,
	[ProposedAmount] [decimal](18, 0) NULL,
	[ProposedAmountOrigCurr] [decimal](18, 2) NULL,
	[AmountRaisedOrigCurr] [decimal](18, 2) NULL,
	[Created_At] [datetime2](7) NULL,
	[SharePriceOrigCurrency] [decimal](18, 4) NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Financings_2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[FinancingType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[FinancingType](
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
 CONSTRAINT [PK__Financin__A25C5AA69140393B] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[FinancingTypeCategory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[FinancingTypeCategory](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] NOT NULL,
	[SortOrder] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Financin__A25C5AA643E269DB] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[FinancingTypeSubCategory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[FinancingTypeSubCategory](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] NOT NULL,
	[SortOrder] [int] NULL,
	[FinancingTypeCategory_Name] [nvarchar](250) NOT NULL,
	[FinancingTypeCategory_Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Financin__A25C5AA6284E8F00] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[FiscalPeriod]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[FiscalPeriod](
	[Code] [int] NOT NULL,
	[FiscalPeriodID] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__FiscalPe__A25C5AA6B9C02149] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[HotTopic]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[HotTopic](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateActive] [datetime] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](250) NULL,
 CONSTRAINT [PK_HotTopic_Mdm] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[HotTopic_to_Company]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[HotTopic_to_Company](
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
/****** Object:  Table [mdm].[HotTopic_to_Indication]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[HotTopic_to_Indication](
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
/****** Object:  Table [mdm].[HotTopic_to_Product]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[HotTopic_to_Product](
	[HotTopic_Code] [int] NOT NULL,
	[Product_Code] [int] NOT NULL,
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
/****** Object:  Table [mdm].[HotTopic_to_Target]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[HotTopic_to_Target](
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
/****** Object:  Table [mdm].[IndicationDetail]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[IndicationDetail](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_IndicationDetail_Mdm] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[IPOs]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[IPOs](
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
 CONSTRAINT [PK__IPOs__A25C5AA6C12F922C] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[License]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[License](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[InLicenseCompany_Code] [int] NOT NULL,
	[InLicenseCompany_Name] [nvarchar](250) NULL,
	[OutLicenseCompany_Code] [int] NULL,
	[OutLicenseCompany_Name] [nvarchar](250) NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[ProductDetail_Code] [int] NOT NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[DealAsset_Code] [int] NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[PartnershipTerms_Code] [int] NOT NULL,
	[PartnershipTerms_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__License1__A25C5AA6B2BE8DA1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[License_Temp_BU]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[License_Temp_BU](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[InLicenseCompany_Code] [int] NOT NULL,
	[InLicenseCompany_Name] [nvarchar](250) NULL,
	[OutLicenseCompany_Code] [int] NULL,
	[OutLicenseCompany_Name] [nvarchar](250) NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[ProductDetail_Code] [int] NOT NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[DealAsset_Code] [int] NULL,
	[DealAsset_Name] [nvarchar](250) NULL,
	[PartnershipTerms_Code] [int] NOT NULL,
	[PartnershipTerms_Name] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[LicenseDetail]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[LicenseDetail](
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
/****** Object:  Table [mdm].[LinkifyIgnoreOriginCompany]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[LinkifyIgnoreOriginCompany](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[CompanyCode] [int] NULL,
	[CompanyName] [nvarchar](250) NULL,
 CONSTRAINT [PK_mdm.LinkifyIgnoreOriginCompany] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MAAttitudes]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MAAttitudes](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MarketScale]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MarketScale](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[MarketScaleID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__MarketSc__A25C5AA686BAC8B4] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MechanismOfAction]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MechanismOfAction](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MechanismOfActionID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Mechanis__A25C5AA6EF5E8A9C] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Milestone]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Milestone](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
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
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MilestoneIntent]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MilestoneIntent](
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
 CONSTRAINT [PK__Mileston__A25C5AA63EB1B97F] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MilestoneStatus]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MilestoneStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[MilestoneStatusID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Mileston__A25C5AA64B0D1925] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MilestoneType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MilestoneType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[MilestoneTypeID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IsIncluded_Code] [int] NULL,
	[IsIncluded_Name] [nvarchar](250) NULL,
 CONSTRAINT [PK__Mileston__A25C5AA66990EB96] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MilestoneType_to_MilestoneIntent]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MilestoneType_to_MilestoneIntent](
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
/****** Object:  Table [mdm].[MolecularTarget]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MolecularTarget](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[MolecularTargetID] [nvarchar](200) NULL,
	[MolecularTargetFamily_Code] [int] NULL,
	[MolecularTargetFamily_Name] [nvarchar](250) NULL,
	[DateTargetCreated] [nvarchar](100) NULL,
	[LegacyTargetName] [nvarchar](250) NULL,
	[Synonyms] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MolecularTarget] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MolecularTargetFamily]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MolecularTargetFamily](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[IsImportedFromStaticTable] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MolecularTargetFamily] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MolecularTargetFamilyUrlHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MolecularTargetFamilyUrlHistory](
	[Code] [int] NOT NULL,
	[MolecularTargetFamilyCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_MolecularTargetFamilyUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[MolecularTargetUrlHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[MolecularTargetUrlHistory](
	[Code] [int] NOT NULL,
	[MolecularTargetCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_MolecularTargetUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[PartnershipScope]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[PartnershipScope](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[PartnershipScopeID] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Partners__A25C5AA699C2581E] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[PartnershipTerms]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[PartnershipTerms](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[PartnershipTermsID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Partners__A25C5AA6BA259D4E] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Pipeline]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Pipeline](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[PhaseOfDevelopment_Code] [int] NOT NULL,
	[PhaseOfDevelopment_Name] [nvarchar](250) NULL,
	[EventDate] [datetime2](7) NULL,
	[EventStatus] [nvarchar](100) NULL,
	[Company_Code] [int] NOT NULL,
	[Company_Name] [nvarchar](250) NULL,
	[Product_Code] [int] NOT NULL,
	[Product_Name] [nvarchar](250) NULL,
	[Notes] [nvarchar](max) NULL,
	[RouteOfAdministration_Code] [int] NULL,
	[RouteOfAdministration_Name] [nvarchar](250) NULL,
	[ProductDetail_Code] [int] NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[ProductDetail_ID] [int] NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IndicationDetailCode] [int] NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK__Pipeline__A25C5AA6E4DECC0E] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[PipelineDetail]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[PipelineDetail](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[PipelineCode] [int] NOT NULL,
	[PhaseOfDevelopment_Code] [int] NOT NULL,
	[RouteOfAdministration_Code] [int] NULL,
	[RegulatoryDesignationRegionCode] [int] NOT NULL,
	[IsDiscontinued] [bit] NULL,
 CONSTRAINT [PK_PipelineDetail_Mdm] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[PipelineRegulatoryDetail]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[PipelineRegulatoryDetail](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[RegulatoryDesignationCode] [int] NOT NULL,
	[PipelineCode] [int] NOT NULL,
 CONSTRAINT [PK_PipelineRegulatoryDetail_Mdm] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Product]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Product](
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
	[DiscontinuedNotes] [varchar](1000) NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Product_to_MechanismOfAction]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Product_to_MechanismOfAction](
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
 CONSTRAINT [PK__Product___A25C5AA633E329FF] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Product_to_MolecularTarget]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Product_to_MolecularTarget](
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
 CONSTRAINT [PK__Product___A25C5AA6F4E6A687] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Product_to_StandardIndication]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Product_to_StandardIndication](
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
 CONSTRAINT [PK__Product___A25C5AA6C7ADCF45] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Product_to_TherapeuticModality]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Product_to_TherapeuticModality](
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
 CONSTRAINT [PK__Product___A25C5AA6ACEFB2F1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[ProductDetail]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[ProductDetail](
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
	[DiscontinuedNotes] [varchar](1000) NULL,
	[DateDiscontinued] [datetime] NULL,
 CONSTRAINT [PK__ProductD__A25C5AA67E29339F] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[ProductNames]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[ProductNames](
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
 CONSTRAINT [PK_ProductNamesy] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[ProductNameTypes]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[ProductNameTypes](
	[Code] [int] NOT NULL,
	[Name] [varchar](25) NULL,
	[Sort_Order] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[ProductUrlHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[ProductUrlHistory](
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
/****** Object:  Table [mdm].[RareOrphanIntent]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[RareOrphanIntent](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Region]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Region](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Region__A25C5AA637EB8FFF] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[RegulatoryDesignation]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[RegulatoryDesignation](
	[Name] [nvarchar](250) NOT NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[RegulatoryRegion] [nvarchar](250) NOT NULL,
	[ProductDetail_Code] [int] NULL,
	[ProductDetail_Name] [nvarchar](250) NULL,
	[DateGranted] [datetime2](7) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[RegulatoryDesignationType_Code] [int] NOT NULL,
	[RegulatoryDesignationType_Name] [varchar](255) NOT NULL,
	[RegulatoryDesignationRegion_Code] [int] NOT NULL,
	[RegulatoryDesignationRegion_Name] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Regulato__A25C5AA6D6C3888B] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[RegulatoryDesignationRegion]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[RegulatoryDesignationRegion](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Regulato__A25C5AA6FBEDA025] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[RegulatoryDesignationType]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[RegulatoryDesignationType](
	[Name] [nvarchar](250) NULL,
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Regulato__A25C5AA6991CA86F] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[RouteOfAdministration]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[RouteOfAdministration](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[RouteOfAdministrationID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__RouteOfA__A25C5AA62EF1E3EB] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[StandardIndication]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[StandardIndication](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
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
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_StandardIndication] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[StandardIndicationSynonym]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[StandardIndicationSynonym](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[StandardIndicationName] [nvarchar](250) NOT NULL,
	[Synonym] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](60) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Notes] [nvarchar](500) NULL,
 CONSTRAINT [PK_StandardIndicationSynonym] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[StandardIndicationUrlHistory]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[StandardIndicationUrlHistory](
	[Code] [int] NOT NULL,
	[StandardIndicationCode] [int] NOT NULL,
	[URLSearchBy] [varchar](255) NULL,
 CONSTRAINT [PK_StandardIndicationUrlHistory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[State]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[State](
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
 CONSTRAINT [PK__State__A25C5AA6E45CF007] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[StockExchange]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[StockExchange](
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
/****** Object:  Table [mdm].[StockFundamentals]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[StockFundamentals](
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
/****** Object:  Table [mdm].[Stocks]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Stocks](
	[Code] [int] NOT NULL,
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
 CONSTRAINT [PK_Stocks] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Stocks2]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Stocks2](
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
 CONSTRAINT [PK__Stocks2__A25C5AA6A1D6D3AE] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[StockSplits]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[StockSplits](
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
 CONSTRAINT [PK__StockSpl__A25C5AA69CB146DE] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[StockTicker]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[StockTicker](
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
 CONSTRAINT [PK__StockTic__A25C5AA684C1590F] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[SubRegion]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[SubRegion](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[Region_Code] [int] NOT NULL,
	[Region_Name] [nvarchar](250) NULL,
	[SortOrder] [nvarchar](250) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__SubRegio__A25C5AA6BF04E265] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[TherapeuticModality]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[TherapeuticModality](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[TherapeuticModalityID] [decimal](18, 0) NULL,
	[ParentCode] [int] NULL,
	[ModalityLevel] [decimal](18, 0) NULL,
	[UseInDeals] [bit] NOT NULL,
	[UseInClinical] [bit] NOT NULL,
	[SortOrder] [decimal](18, 0) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[SearchBy] [varchar](512) NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_TherapeuticModality2] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[Tier]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[Tier](
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
/****** Object:  Table [mdm].[TrialStatus]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[TrialStatus](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[TrialStatusID] [nvarchar](200) NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__TrialSta__A25C5AA61F8464F4] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[YesOrNo]    Script Date: 2/21/2023 12:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[YesOrNo](
	[Name] [nvarchar](250) NULL,
	[Code] [int] NOT NULL,
	[CreatedUser] [varchar](60) NULL,
	[UpdatedUser] [varchar](60) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__YesOrNo__A25C5AA6B9728B41] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [mdm].[Company] ADD  CONSTRAINT [DF__Company__SearchB__174E50DA]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [mdm].[Company] ADD  CONSTRAINT [DF_Company_DoingBusinessAs]  DEFAULT (NULL) FOR [DoingBusinessAs]
GO
ALTER TABLE [mdm].[Company] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[Company_BU_02_05_2020] ADD  CONSTRAINT [DF_Company_SearchBy]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [mdm].[DealAssets] ADD  CONSTRAINT [DF__DealAsset__HasUn__2BB53C3A]  DEFAULT ((0)) FOR [HasUndisclosedTerritories]
GO
ALTER TABLE [mdm].[Deals] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[DiseaseCategory] ADD  CONSTRAINT [DF_DiseaseCategory_SearchBy]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [mdm].[DiseaseCategory] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[EventStatus] ADD  DEFAULT ((0)) FOR [UseInMilestone]
GO
ALTER TABLE [mdm].[EventType] ADD  DEFAULT ((0)) FOR [IsMilestoneEvent]
GO
ALTER TABLE [mdm].[EventType] ADD  DEFAULT ((0)) FOR [IsNonMilestoneEvent]
GO
ALTER TABLE [mdm].[Financings] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[HotTopic] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [mdm].[HotTopic] ADD  DEFAULT (getdate()) FOR [DateActive]
GO
ALTER TABLE [mdm].[IndicationDetail] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[MolecularTarget] ADD  CONSTRAINT [DF__Molecular__Search__72C7A2F8]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [mdm].[MolecularTarget] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[MolecularTargetFamily] ADD  CONSTRAINT [DF_MolecularTargetFamily_IsImportedFromStaticTable]  DEFAULT ((0)) FOR [IsImportedFromStaticTable]
GO
ALTER TABLE [mdm].[MolecularTargetFamily] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[Pipeline] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[Product] ADD  CONSTRAINT [DF__Product__SearchB__1C1305F7]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [mdm].[Product] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[ProductNames] ADD  DEFAULT ((1)) FOR [ToPublish]
GO
ALTER TABLE [mdm].[ProductNames] ADD  DEFAULT ((0)) FOR [OmitFromLinkify]
GO
ALTER TABLE [mdm].[StandardIndication] ADD  CONSTRAINT [DF_StandardIndication_SearchBy]  DEFAULT ('') FOR [SearchBy]
GO
ALTER TABLE [mdm].[StandardIndication] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[StockExchange] ADD  CONSTRAINT [DF__StockExch__Exclu__45544755]  DEFAULT ((0)) FOR [Exclude_From_DataCollect]
GO
ALTER TABLE [mdm].[StockTicker] ADD  DEFAULT ((0)) FOR [Exclude_From_DataCollect]
GO
ALTER TABLE [mdm].[TherapeuticModality] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [mdm].[CompanyUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyUrlHistory_Company] FOREIGN KEY([CompanyCode])
REFERENCES [mdm].[Company_BU_02_05_2020] ([Code])
GO
ALTER TABLE [mdm].[CompanyUrlHistory] CHECK CONSTRAINT [FK_CompanyUrlHistory_Company]
GO
ALTER TABLE [mdm].[DiseaseCategoryUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryUrlHistory_DiseaseCategory] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [mdm].[DiseaseCategory] ([Code])
GO
ALTER TABLE [mdm].[DiseaseCategoryUrlHistory] CHECK CONSTRAINT [FK_DiseaseCategoryUrlHistory_DiseaseCategory]
GO
ALTER TABLE [mdm].[HotTopic_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_HotTopic_to_Company_Mdm] FOREIGN KEY([Company_Code])
REFERENCES [mdm].[Company] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Company] CHECK CONSTRAINT [FK_Company_Code_HotTopic_to_Company_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company_Mdm] FOREIGN KEY([HotTopic_Code])
REFERENCES [mdm].[HotTopic] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Company] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Indication]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication_Mdm] FOREIGN KEY([HotTopic_Code])
REFERENCES [mdm].[HotTopic] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Indication] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Indication]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication_Mdm] FOREIGN KEY([StandardIndication_Code])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Indication] CHECK CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product_Mdm] FOREIGN KEY([HotTopic_Code])
REFERENCES [mdm].[HotTopic] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Product] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_HotTopic_to_Product_Mdm] FOREIGN KEY([Product_Code])
REFERENCES [mdm].[Product] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Product] CHECK CONSTRAINT [FK_Product_Code_HotTopic_to_Product_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Target]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target_Mdm] FOREIGN KEY([HotTopic_Code])
REFERENCES [mdm].[HotTopic] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Target] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Target]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target_Mdm] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [mdm].[MolecularTarget] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Target] CHECK CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target_Mdm]
GO
ALTER TABLE [mdm].[IndicationDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_IndicationDetail_Mdm] FOREIGN KEY([StandardIndicationCode])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[IndicationDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_IndicationDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail_Mdm] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [mdm].[DiseaseCategory] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm] FOREIGN KEY([IndicationDetailCode])
REFERENCES [mdm].[IndicationDetail] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_LicenseCode_LicenseDetail_Mdm] FOREIGN KEY([LicenseCode])
REFERENCES [mdm].[License] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_LicenseCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineDetailCode_LicenseDetail_Mdm] FOREIGN KEY([PipelineDetailCode])
REFERENCES [mdm].[PipelineDetail] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_PipelineDetailCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_LicenseDetail_Mdm] FOREIGN KEY([StandardIndicationCode])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode_MS] FOREIGN KEY([Product_Code])
REFERENCES [mdm].[Product] ([Code])
GO
ALTER TABLE [mdm].[Milestone] CHECK CONSTRAINT [FK_ProductCode_MS]
GO
ALTER TABLE [mdm].[MolecularTargetFamilyUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetFamilyUrlHistory_MolecularTargetFamily] FOREIGN KEY([MolecularTargetFamilyCode])
REFERENCES [mdm].[MolecularTargetFamily] ([Code])
GO
ALTER TABLE [mdm].[MolecularTargetFamilyUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetFamilyUrlHistory_MolecularTargetFamily]
GO
ALTER TABLE [mdm].[MolecularTargetUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetUrlHistory_MolecularTarget] FOREIGN KEY([MolecularTargetCode])
REFERENCES [mdm].[MolecularTarget] ([Code])
GO
ALTER TABLE [mdm].[MolecularTargetUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetUrlHistory_MolecularTarget]
GO
ALTER TABLE [mdm].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode] FOREIGN KEY([Product_Code])
REFERENCES [mdm].[Product] ([Code])
GO
ALTER TABLE [mdm].[Pipeline] CHECK CONSTRAINT [FK_ProductCode]
GO
ALTER TABLE [mdm].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail_Mdm] FOREIGN KEY([PhaseOfDevelopment_Code])
REFERENCES [mdm].[ClinicalPhase] ([Code])
GO
ALTER TABLE [mdm].[PipelineDetail] CHECK CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineDetail_Mdm] FOREIGN KEY([PipelineCode])
REFERENCES [mdm].[Pipeline] ([Code])
GO
ALTER TABLE [mdm].[PipelineDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail_Mdm] FOREIGN KEY([RegulatoryDesignationRegionCode])
REFERENCES [mdm].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [mdm].[PipelineDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail_Mdm] FOREIGN KEY([RouteOfAdministration_Code])
REFERENCES [mdm].[RouteOfAdministration] ([Code])
GO
ALTER TABLE [mdm].[PipelineDetail] CHECK CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail_Mdm] FOREIGN KEY([PipelineCode])
REFERENCES [mdm].[Pipeline] ([Code])
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail_Mdm] FOREIGN KEY([RegulatoryDesignationCode])
REFERENCES [mdm].[RegulatoryDesignation] ([Code])
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail_Mdm]
GO
ALTER TABLE [mdm].[Product_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetCode_PMT] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [mdm].[MolecularTarget] ([Code])
GO
ALTER TABLE [mdm].[Product_to_MolecularTarget] CHECK CONSTRAINT [FK_MolecularTargetCode_PMT]
GO
ALTER TABLE [mdm].[ProductDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_PD] FOREIGN KEY([StandardIndication_Code])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[ProductDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_PD]
GO
ALTER TABLE [mdm].[ProductUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductUrlHistory_Product] FOREIGN KEY([ProductCode])
REFERENCES [mdm].[Product] ([Code])
GO
ALTER TABLE [mdm].[ProductUrlHistory] CHECK CONSTRAINT [FK_ProductUrlHistory_Product]
GO
ALTER TABLE [mdm].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetailCode_RD] FOREIGN KEY([ProductDetail_Code])
REFERENCES [mdm].[ProductDetail] ([Code])
GO
ALTER TABLE [mdm].[RegulatoryDesignation] CHECK CONSTRAINT [FK_ProductDetailCode_RD]
GO
ALTER TABLE [mdm].[StandardIndicationUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationUrlHistory_StandardIndication] FOREIGN KEY([StandardIndicationCode])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[StandardIndicationUrlHistory] CHECK CONSTRAINT [FK_StandardIndicationUrlHistory_StandardIndication]
GO
