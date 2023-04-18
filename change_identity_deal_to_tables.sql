-- Deal_to_CommercialPaymentStructure
SELECT * INTO [ods].[Deal_to_CommercialPaymentStructure_BU_4182023_nakhaiev] FROM [ods].[Deal_to_CommercialPaymentStructure];

delete from [ods].[Deal_to_CommercialPaymentStructure];

ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_CommercialPaymentStructure] ON;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_CommercialPaymentStructure] (
[Name]
      ,[Code]
      ,[DealCode]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[CommercialPaymentStructure_Code]
      ,[CommercialPaymentStructure_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[CommercialPmntNotes]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[DealCode]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[CommercialPaymentStructure_Code]
      ,[CommercialPaymentStructure_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[CommercialPmntNotes]
    FROM [BCIQ_ODS].[ods].[Deal_to_CommercialPaymentStructure_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_CommercialPaymentStructure] OFF;

ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT ALL;


-- Deal_to_Company ????
-- SELECT * INTO [ods].[Deal_to_Company_BU_4182023_nakhaiev] FROM [ods].[Deal_to_Company];

-- delete from [ods].[Deal_to_Company];

-- ALTER TABLE [ods].[Deal_to_Company] NOCHECK CONSTRAINT ALL;

-- SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_Company] ON;

-- INSERT INTO [BCIQ_ODS].[ods].[Deal_to_Company] (
-- [Name]
--       ,[Code]
--       ,[Deal_Code]
--       ,[Deal_Name]
--       ,[Company_Code]
--       ,[Company_Name]
--       ,[CompanyRole_Code]
--       ,[CompanyRole_Name]
--       ,[CompanyRank]
--       ,[CompanyHQCountryID]
--       ,[CompanyTypeID]
--       ,[Responsibilities]
--       ,[DatePrior]
--       ,[StockPricePrior]
--       ,[StockPricePriorUSD]
--       ,[StockValue]
--       ,[CashValue]
--       ,[SwapRate]
--       ,[SharesIssued]
--       ,[SharesOutstanding]
--       ,[SharesOutstandingDate]
--       ,[MarketValue]
--       ,[MarketValueDate]
--       ,[ExchangeRate]
--       ,[CurrencyID]
--       ,[OwnershipID]
--       ,[ExchangeID1]
--       ,[ExchangeID2]
--       ,[Ticker1]
--       ,[Ticker2]
--       ,[PctOwnership]
--       ,[CreatedUser]
--       ,[UpdatedUser]
--       ,[CreatedDateTime]
--       ,[UpdatedDateTime]
-- ) (
--     SELECT 
-- [Name]
--       ,[Code] + 100000
--       ,[Deal_Code]
--       ,[Deal_Name]
--       ,[Company_Code]
--       ,[Company_Name]
--       ,[CompanyRole_Code]
--       ,[CompanyRole_Name]
--       ,[CompanyRank]
--       ,[CompanyHQCountryID]
--       ,[CompanyTypeID]
--       ,[Responsibilities]
--       ,[DatePrior]
--       ,[StockPricePrior]
--       ,[StockPricePriorUSD]
--       ,[StockValue]
--       ,[CashValue]
--       ,[SwapRate]
--       ,[SharesIssued]
--       ,[SharesOutstanding]
--       ,[SharesOutstandingDate]
--       ,[MarketValue]
--       ,[MarketValueDate]
--       ,[ExchangeRate]
--       ,[CurrencyID]
--       ,[OwnershipID]
--       ,[ExchangeID1]
--       ,[ExchangeID2]
--       ,[Ticker1]
--       ,[Ticker2]
--       ,[PctOwnership]
--       ,[CreatedUser]
--       ,[UpdatedUser]
--       ,[CreatedDateTime]
--       ,[UpdatedDateTime]
--     FROM [BCIQ_ODS].[ods].[Deal_to_Company_BU_4182023_nakhaiev]
-- );

-- SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_Company] OFF;

-- ALTER TABLE [ods].[Deal_to_Company] CHECK CONSTRAINT ALL;


-- Deal_to_Geography
SELECT * INTO [ods].[Deal_to_Geography_BU_4182023_nakhaiev] FROM [ods].[Deal_to_Geography];

delete from [ods].[Deal_to_Geography];

ALTER TABLE [ods].[Deal_to_Geography] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_Geography] ON;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_Geography] (
[Name]
      ,[Code]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[Country_Code]
      ,[Country_Name]
      ,[SubRegion_Code]
      ,[SubRegion_Name]
      ,[Region_Code]
      ,[Region_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[Country_Code]
      ,[Country_Name]
      ,[SubRegion_Code]
      ,[SubRegion_Name]
      ,[Region_Code]
      ,[Region_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[Deal_to_Geography_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_Geography] OFF;

ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT ALL;


-- Deal_to_MechanismOfAction
SELECT * INTO [ods].[Deal_to_MechanismOfAction_BU_4182023_nakhaiev] FROM [ods].[Deal_to_MechanismOfAction];

delete from [ods].[Deal_to_MechanismOfAction];

ALTER TABLE [ods].[Deal_to_MechanismOfAction] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_MechanismOfAction] ON;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_MechanismOfAction] (
[Name]
      ,[Code]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[MechanismOfAction_Code]
      ,[MechanismOfAction_Name]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[MechanismOfAction_Code]
      ,[MechanismOfAction_Name]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[Deal_to_MechanismOfAction_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_MechanismOfAction] OFF;

ALTER TABLE [ods].[Deal_to_MechanismOfAction] CHECK CONSTRAINT ALL;


-- Deal_to_MolecularTarget
SELECT * INTO [ods].[Deal_to_MolecularTarget_BU_4182023_nakhaiev] FROM [ods].[Deal_to_MolecularTarget];

delete from [ods].[Deal_to_MolecularTarget];

ALTER TABLE [ods].[Deal_to_MolecularTarget] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_MolecularTarget] ON;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_MolecularTarget] (
[Name]
      ,[Code]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[MolecularTarget_Code]
      ,[MolecularTarget_Name]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[MolecularTarget_Code]
      ,[MolecularTarget_Name]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[Deal_to_MolecularTarget_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_MolecularTarget] OFF;

ALTER TABLE [ods].[Deal_to_MolecularTarget] CHECK CONSTRAINT ALL;


-- Deal_to_PartnershipScope
SELECT * INTO [ods].[Deal_to_PartnershipScope_BU_4182023_nakhaiev] FROM [ods].[Deal_to_PartnershipScope];

delete from [ods].[Deal_to_PartnershipScope];

ALTER TABLE [ods].[Deal_to_PartnershipScope] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_PartnershipScope] ON;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_PartnershipScope] (
[Name]
      ,[Code]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[PartnershipScope_Code]
      ,[PartnershipScope_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[PartnershipScope_Code]
      ,[PartnershipScope_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[Deal_to_PartnershipScope_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_PartnershipScope] OFF;

ALTER TABLE [ods].[Deal_to_PartnershipScope] CHECK CONSTRAINT ALL;


-- Deal_to_Product
SELECT * INTO [ods].[Deal_to_Product_BU_4182023_nakhaiev] FROM [ods].[Deal_to_Product];

delete from [ods].[Deal_to_Product];

ALTER TABLE [ods].[Deal_to_Product] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_Product] ON;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_Product] (
[Name]
      ,[Code]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[Product_Code]
      ,[Product_Name]
      ,[IsDiscontinued_Code]
      ,[IsDiscontinued_Name]
      ,[IncludeInAsset_Code]
      ,[IncludeInAsset_Name]
      ,[WasAtSigning_Code]
      ,[WasAtSigning_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[Product_Code]
      ,[Product_Name]
      ,[IsDiscontinued_Code]
      ,[IsDiscontinued_Name]
      ,[IncludeInAsset_Code]
      ,[IncludeInAsset_Name]
      ,[WasAtSigning_Code]
      ,[WasAtSigning_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[Deal_to_Product_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_Product] OFF;

ALTER TABLE [ods].[Deal_to_Product] CHECK CONSTRAINT ALL;


-- Deal_to_StandardIndication
SELECT * INTO [ods].[Deal_to_StandardIndication_BU_4182023_nakhaiev] FROM [ods].[Deal_to_StandardIndication];

delete from [ods].[Deal_to_StandardIndication];

ALTER TABLE [ods].[Deal_to_StandardIndication] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_StandardIndication] ON;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_StandardIndication] (
[Name]
      ,[Code]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[StandardIndication_Code]
      ,[StandardIndication_Name]
      ,[StandardIndicationRank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[StandardIndication_Code]
      ,[StandardIndication_Name]
      ,[StandardIndicationRank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[Deal_to_StandardIndication_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_StandardIndication] OFF;

ALTER TABLE [ods].[Deal_to_StandardIndication] CHECK CONSTRAINT ALL;


-- Deal_to_TherapeuticModality
SELECT * INTO [ods].[Deal_to_TherapeuticModality_BU_4182023_nakhaiev] FROM [ods].[Deal_to_TherapeuticModality];

delete from [ods].[Deal_to_TherapeuticModality];

ALTER TABLE [ods].[Deal_to_TherapeuticModality] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_TherapeuticModality] ON;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_TherapeuticModality] (
[Name]
      ,[Code]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[TherapeuticModality_Code]
      ,[TherapeuticModality_Name]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[TherapeuticModality_Code]
      ,[TherapeuticModality_Name]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[Deal_to_TherapeuticModality_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Deal_to_TherapeuticModality] OFF;

ALTER TABLE [ods].[Deal_to_TherapeuticModality] CHECK CONSTRAINT ALL;

-- DealAsset_to_Company
SELECT * INTO [ods].[DealAsset_to_Company_BU_4182023_nakhaiev] FROM [ods].[DealAsset_to_Company];

delete from [ods].[DealAsset_to_Company];

ALTER TABLE [ods].[DealAsset_to_Company] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealAsset_to_Company] ON;

INSERT INTO [BCIQ_ODS].[ods].[DealAsset_to_Company] (
[Code]
      ,[Name]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[Company_Code]
      ,[Company_Name]
      ,[CompanyDealRole_Code]
      ,[CompanyDealRole_Name]
      ,[Responsibilities]
      ,[CompanyRank]
      ,[MarketCap]
      ,[MarketCapDate]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Code] + 100000
      ,[Name]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[Company_Code]
      ,[Company_Name]
      ,[CompanyDealRole_Code]
      ,[CompanyDealRole_Name]
      ,[Responsibilities]
      ,[CompanyRank]
      ,[MarketCap]
      ,[MarketCapDate]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[DealAsset_to_Company_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealAsset_to_Company] OFF;

ALTER TABLE [ods].[DealAsset_to_Company] CHECK CONSTRAINT ALL;