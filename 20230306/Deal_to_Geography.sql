-- Deal_to_Geography
ALTER TABLE [ods].[Deal_to_Geography] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_Geography] (
       [Name]
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
       datg.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,datg.[DealAsset_Name]
      ,datg.[Country_Code]
      ,datg.[Country_Name]
      ,datg.[SubRegion_Code]
      ,datg.[SubRegion_Name]
      ,datg.[Region_Code]
      ,datg.[Region_Name]
      ,datg.[CreatedUser]
      ,datg.[UpdatedUser]
      ,datg.[CreatedDateTime]
      ,datg.[UpdatedDateTime]
	  FROM [BCIQ_ODS].[api].[Deal_to_Geography] datg
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON datg.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code = 9999
);

ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT ALL;