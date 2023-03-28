-- for new deals
ALTER TABLE [ods].[DealAssets] NOCHECK CONSTRAINT ALL;
SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealAssets] ON;

INSERT INTO [BCIQ_ODS].[ods].[DealAssets] (
       [Code]
       ,[Name]
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
       mdmda.[Code]
       ,da.[Name]
       ,dt.[odsCode] as Deal_Code
       ,da.[Deal_Name]
       ,da.[DealID]
       ,da.[AssetID]
       ,da.[AssetType_Code]
       ,da.[AssetType_Name]
       ,da.[DealType_Code]
       ,da.[DealType_Name]
       ,da.[MaxProductStatus_Code]
       ,da.[MaxProductStatus_Name]
       ,da.[RareOrphanIntent_Code]
       ,da.[RareOrphanIntent_Name]
       ,da.[MAAttitude_Code]
       ,da.[MAAttitude_Name]
       ,da.[DrugDevelopmentScope_Code]
       ,da.[DrugDevelopmentScope_Name]
       ,da.[MarketScale_Code]
       ,da.[MarketScale_Name]
       ,da.[TrialStatus_Code]
       ,da.[TrialStatus_Name]
       ,null
       ,da.[AssetValue]
       ,da.[OptionExclusivityPayment]
       ,da.[OptionExercisePayment]
       ,da.[UpfrontCash]
       ,da.[UpfrontEquity]
       ,da.[RDFunding]
       ,da.[TotalMilestonePayements]
       ,da.[RDRegulatoryMilestonePayments]
       ,da.[SalesBasedMilestonePayments]
       ,da.[NetSalesRoyalty]
       ,null
       ,null
       ,da.[ProfitSplit]
       ,null
       ,null
       ,da.[ManufacturingSupplyTransPrice]
       ,da.[UnitBasedReimbursement]
       ,da.[LoansAndOther]
       ,da.[FinalSharePricePaid]
       ,da.[SharePricePremium1Day]
       ,da.[SharePricePremium5Day]
       ,da.[SharePricePremium30Day]
       ,da.[MinAnnouncedValue]
       ,da.[CreatedUser]
       ,da.[UpdatedUser]
       ,da.[CreatedDateTime]
       ,da.[UpdatedDateTime]
       ,da.[HasUndisclosedTerritories]
       ,null
       ,null
       ,null
       ,null
       ,null
       ,null
  FROM [BCIQ_ODS].[api].[DealAssets] da
  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
  JOIN [BCIQ_ODS].[mdm].[DealAssets] mdmda ON mdmda.Deal_Code = dt.Code AND mdmda.AssetType_Code = da.AssetType_Code AND  mdmda.DealType_Code = da.DealType_Code
  WHERE dt.Code != 9999
);
SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealAssets] OFF;
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT ALL;
