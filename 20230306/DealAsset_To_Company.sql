-- DealAsset_To_Company
ALTER TABLE [ods].[DealAsset_to_Company] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[DealAsset_to_Company] (
	 [Name]
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
	-- dt.apiCode as apiDealCode, dt.odsCode as odsDealCode, da.Code as apiDealAssetCode, odsda.Code as odsDealAssetCode, datc.*
	 datc.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,datc.[DealAsset_Name]
      ,datc.[Company_Code]
      ,datc.[Company_Name]
      ,datc.[CompanyDealRole_Code]
      ,datc.[CompanyDealRole_Name]
      ,datc.[Responsibilities]
      ,datc.[CompanyRank]
      ,datc.[MarketCap]
      ,datc.[MarketCapDate]
      ,datc.[CreatedUser]
      ,datc.[UpdatedUser]
      ,datc.[CreatedDateTime]
      ,datc.[UpdatedDateTime]
	  FROM [BCIQ_ODS].[api].[DealAsset_To_Company] datc
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON datc.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code != 9999
);

ALTER TABLE [ods].[DealAsset_to_Company] CHECK CONSTRAINT ALL;