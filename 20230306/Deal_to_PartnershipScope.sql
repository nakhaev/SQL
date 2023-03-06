-- Deal_to_PartnershipScope
ALTER TABLE [ods].[Deal_to_PartnershipScope] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_PartnershipScope] (
      [Name]
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
       datps.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,datps.[DealAsset_Name]
      ,datps.[PartnershipScope_Code]
      ,datps.[PartnershipScope_Name]
      ,datps.[CreatedUser]
      ,datps.[UpdatedUser]
      ,datps.[CreatedDateTime]
      ,datps.[UpdatedDateTime]
	  FROM [BCIQ_ODS].[api].[Deal_to_PartnershipScope] datps
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON datps.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code = 9999
);

ALTER TABLE [ods].[Deal_to_PartnershipScope] CHECK CONSTRAINT ALL;