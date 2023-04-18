-- SELECT * INTO [ods].[DealAssets_BU_4182023_nakhaiev] FROM [ods].[DealAssets];

-- ALTER TABLE [ods].[DealAssets_BU_4182023_nakhaiev] ADD [OldCode] [int] NULL;

-- UPDATE [ods].[DealAssets_BU_4182023_nakhaiev] SET [OldCode] = [Code];

ALTER TABLE [ods].[DealAssets] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[DealAsset_to_Company] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Geography] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_MechanismOfAction] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_MolecularTarget] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_PartnershipScope] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Product] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_StandardIndication] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_TherapeuticModality] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[License] NOCHECK CONSTRAINT ALL;

delete from [ods].[DealAssets];

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealAssets] ON;

INSERT INTO [BCIQ_ODS].[ods].[DealAssets] (
[Name]
      ,[Code]
      ,[Deal_Code]
      ,[Deal_Name]
      ,[DealID]
      ,[AssetID]
      ,[AssetType_Code]
      ,[AssetType_Name]
      ,[DealType_Code]
      ,[DealType_Name]
      ,[MaxProductStatus_Code]
      ,[MaxProductStatus_Name]
      ,[RareOrphanIntent_Code]
      ,[RareOrphanIntent_Name]
      ,[MAAttitude_Code]
      ,[MAAttitude_Name]
      ,[DrugDevelopmentScope_Code]
      ,[DrugDevelopmentScope_Name]
      ,[MarketScale_Code]
      ,[MarketScale_Name]
      ,[TrialStatus_Code]
      ,[TrialStatus_Name]
      ,[DealExclusivity_Code]
      ,[AssetValue]
      ,[OptionExclusivityPayment]
      ,[OptionExercisePayment]
      ,[UpfrontCash]
      ,[UpfrontEquity]
      ,[RDFunding]
      ,[TotalMilestonePayements]
      ,[RDRegulatoryMilestonePayments]
      ,[SalesBasedMilestonePayments]
      ,[NetSalesRoyalty]
      ,[NetSalesRoyalty_Min]
      ,[NetSalesRoyalty_Max]
      ,[ProfitSplit]
      ,[ProfitSplit_Min]
      ,[ProfitSplit_Max]
      ,[ManufacturingSupplyTransPrice]
      ,[UnitBasedReimbursement]
      ,[LoansAndOther]
      ,[FinalSharePricePaid]
      ,[SharePricePremium1Day]
      ,[SharePricePremium5Day]
      ,[SharePricePremium30Day]
      ,[MinAnnouncedValue]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[HasUndisclosedTerritories]
      ,[UpFrontPmntNotes]
      ,[RDFundingNotes]
      ,[MilestonePmntNotes]
      ,[OptionNotes]
      ,[OtherPymntNotes]
      ,[DealValueNotes]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[Deal_Code]
      ,[Deal_Name]
      ,[DealID]
      ,[AssetID]
      ,[AssetType_Code]
      ,[AssetType_Name]
      ,[DealType_Code]
      ,[DealType_Name]
      ,[MaxProductStatus_Code]
      ,[MaxProductStatus_Name]
      ,[RareOrphanIntent_Code]
      ,[RareOrphanIntent_Name]
      ,[MAAttitude_Code]
      ,[MAAttitude_Name]
      ,[DrugDevelopmentScope_Code]
      ,[DrugDevelopmentScope_Name]
      ,[MarketScale_Code]
      ,[MarketScale_Name]
      ,[TrialStatus_Code]
      ,[TrialStatus_Name]
      ,[DealExclusivity_Code]
      ,[AssetValue]
      ,[OptionExclusivityPayment]
      ,[OptionExercisePayment]
      ,[UpfrontCash]
      ,[UpfrontEquity]
      ,[RDFunding]
      ,[TotalMilestonePayements]
      ,[RDRegulatoryMilestonePayments]
      ,[SalesBasedMilestonePayments]
      ,[NetSalesRoyalty]
      ,[NetSalesRoyalty_Min]
      ,[NetSalesRoyalty_Max]
      ,[ProfitSplit]
      ,[ProfitSplit_Min]
      ,[ProfitSplit_Max]
      ,[ManufacturingSupplyTransPrice]
      ,[UnitBasedReimbursement]
      ,[LoansAndOther]
      ,[FinalSharePricePaid]
      ,[SharePricePremium1Day]
      ,[SharePricePremium5Day]
      ,[SharePricePremium30Day]
      ,[MinAnnouncedValue]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[HasUndisclosedTerritories]
      ,[UpFrontPmntNotes]
      ,[RDFundingNotes]
      ,[MilestonePmntNotes]
      ,[OptionNotes]
      ,[OtherPymntNotes]
      ,[DealValueNotes]
    FROM [BCIQ_ODS].[ods].[DealAssets_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealAssets] OFF;

-- update related
-- UPDATE [ods].[Deal_to_CommercialPaymentStructure] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[Deal_to_Geography] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[Deal_to_MechanismOfAction] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[Deal_to_MolecularTarget] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[Deal_to_PartnershipScope] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[Deal_to_Product] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[Deal_to_StandardIndication] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[Deal_to_TherapeuticModality] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[License] SET [DealAsset_Code] = [DealAsset_Code] + 100000;
-- UPDATE [ods].[DealAsset_to_Company] SET [DealAsset_Code] = [DealAsset_Code] + 100000;


ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[DealAsset_to_Company] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_MechanismOfAction] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_MolecularTarget] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_PartnershipScope] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Product] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_StandardIndication] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_TherapeuticModality] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[License] CHECK CONSTRAINT ALL;

