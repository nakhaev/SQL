-- for new deals
INSERT INTO [BCIQ_ODS].[ods].[DealDocuments] (
       [Name]
      ,[Deal_Code]
      ,[Deal_Name]
      ,[DealID]
      ,[DocumentID]
      ,[DocumentType_Code]
      ,[DocumentType_Name]
      ,[DealEventCode]
      ,[DocumentBlob]
      ,[FileName]
      ,[DocumentDate]
      ,[DocumentSource]
      ,[Notes]
      ,[CreatedUser]
      ,[CreatedDateTime]
      ,[UpdatedUser]
      ,[UpdatedDateTime]
      ,[FileURL]
) (

SELECT 
       dd.[Name]
      ,dt.[odsCode] as Deal_Code
      ,dd.[Deal_Name]
      ,dd.[DealID]
      ,dd.[DocumentID]
      ,dd.[DocumentType_Code]
      ,dd.[DocumentType_Name]
      ,null
      ,null
      ,dd.[FileName]
      ,dd.[DocumentDate]
      ,dd.[DocumentSource]
      ,dd.[Notes]
      ,dd.[CreatedUser]
      ,dd.[CreatedDateTime]
      ,dd.[UpdatedUser]
      ,dd.[UpdatedDateTime]
      ,dd.[FileURL]
  FROM [BCIQ_ODS].[api].[DealDocuments] dd
  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = dd.Deal_Code
  WHERE dt.Code != 9999
)


