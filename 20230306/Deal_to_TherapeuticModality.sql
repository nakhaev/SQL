-- Deal_to_TherapeuticModality
ALTER TABLE [ods].[Deal_to_TherapeuticModality] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_TherapeuticModality] (
      [Name]
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
       dattm.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,dattm.[DealAsset_Name]
      ,dattm.[TherapeuticModality_Code]
      ,dattm.[TherapeuticModality_Name]
      ,dattm.[Rank]
      ,dattm.[CreatedUser]
      ,dattm.[UpdatedUser]
      ,dattm.[CreatedDateTime]
      ,dattm.[UpdatedDateTime]
	  FROM [BCIQ_ODS].[api].[Deal_to_TherapeuticModality] dattm
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON dattm.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code != 9999
);

ALTER TABLE [ods].[Deal_to_TherapeuticModality] CHECK CONSTRAINT ALL;