-- Deal_to_MolecularTarget
ALTER TABLE [ods].[Deal_to_MolecularTarget] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_MolecularTarget] (
       [Name]
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
       datmt.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,datmt.[DealAsset_Name]
      ,datmt.[MolecularTarget_Code]
      ,datmt.[MolecularTarget_Name]
      ,datmt.[Rank]
      ,datmt.[CreatedUser]
      ,datmt.[UpdatedUser]
      ,datmt.[CreatedDateTime]
      ,datmt.[UpdatedDateTime]
	  FROM [BCIQ_ODS].[api].[Deal_to_MolecularTarget] datmt
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON datmt.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code = 9999
);

ALTER TABLE [ods].[Deal_to_MolecularTarget] CHECK CONSTRAINT ALL;