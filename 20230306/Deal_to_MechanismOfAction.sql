-- Deal_to_MechanismOfAction
ALTER TABLE [ods].[Deal_to_MechanismOfAction] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_MechanismOfAction] (
       [Name]
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
       datmoa.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,datmoa.[DealAsset_Name]
      ,datmoa.[MechanismOfAction_Code]
      ,datmoa.[MechanismOfAction_Name]
      ,datmoa.[Rank]
      ,datmoa.[CreatedUser]
      ,datmoa.[UpdatedUser]
      ,datmoa.[CreatedDateTime]
      ,datmoa.[UpdatedDateTime]
	  FROM [BCIQ_ODS].[api].[Deal_to_MechanismOfAction] datmoa
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON datmoa.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code != 9999
);

ALTER TABLE [ods].[Deal_to_MechanismOfAction] CHECK CONSTRAINT ALL;