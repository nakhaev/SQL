-- for new deals
INSETR INTO [BCIQ_ODS].[ods].[DealEvent] (
       [Name]
      ,[EventType_Code]
      ,[EventType_Name]
      ,[Deal_Code]
      ,[Deal_Name]
      ,[DealID]
      ,[EventID]
      ,[EventDescription_Name]
      ,[EventDate]
      ,[PublicationDate]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[DealStory]
) (

SELECT 
       de.[Name]
      ,de.[EventType_Code]
      ,de.[EventType_Name]
      ,dt.[odsCode]
      ,de.[Deal_Name]
      ,de.[DealID]
      ,de.[EventID]
      ,null
      ,de.[EventDate]
      ,null
      ,de.[CreatedUser]
      ,de.[UpdatedUser]
      ,de.[CreatedDateTime]
      ,de.[UpdatedDateTime]
      ,de.[DealStory]
  FROM [BCIQ_ODS].[api].[DealEvent] de
  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = de.Deal_Code
  WHERE dt.Code = 9999;
)