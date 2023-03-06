-- DealAsset_to_DiseaseCategory

-- DOESN'T EXIST IN API SCHEMA

ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[DealAsset_to_DiseaseCategory] (
      ,[Name]
      ,[DealAssetCode]
      ,[DiseaseCategoryCode]
      ,[LoggedInUser]
) (
	SELECT 
	 datdc.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,datdc.[DiseaseCategoryCode]
      ,datdc.[LoggedInUser]
	  FROM [BCIQ_ODS].[api].[DealAsset_to_DiseaseCategory] datdc
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON datdc.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code = 9999
);

ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] CHECK CONSTRAINT ALL;