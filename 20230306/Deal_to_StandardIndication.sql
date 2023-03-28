-- Deal_to_StandardIndication
ALTER TABLE [ods].[Deal_to_StandardIndication] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_StandardIndication] (
      [Name]
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
       adtsi.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,adtsi.[DealAsset_Name]
      ,adtsi.[StandardIndication_Code]
      ,adtsi.[StandardIndication_Name]
      ,adtsi.[StandardIndicationRank]
      ,adtsi.[CreatedUser]
      ,adtsi.[UpdatedUser]
      ,adtsi.[CreatedDateTime]
      ,adtsi.[UpdatedDateTime]
	  FROM [BCIQ_ODS].[api].[Deal_to_StandardIndication] adtsi
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON adtsi.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code != 9999
);

ALTER TABLE [ods].[Deal_to_StandardIndication] CHECK CONSTRAINT ALL;