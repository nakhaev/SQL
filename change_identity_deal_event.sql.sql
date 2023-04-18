SELECT * INTO [ods].[DealEvent_BU_4182023_nakhaiev] FROM [ods].[DealEvent];

ALTER TABLE [ods].[DealEvent_BU_4182023_nakhaiev] ADD [OldCode] [int] NULL;

UPDATE [ods].[DealEvent_BU_4182023_nakhaiev] SET [OldCode] = [Code];

ALTER TABLE [ods].[DealEvent] NOCHECK CONSTRAINT ALL;

ALTER TABLE [ods].[DealDocuments] NOCHECK CONSTRAINT ALL;

ALTER TABLE [ods].[DocumentInfo] NOCHECK CONSTRAINT ALL;

delete from [ods].[DealEvent];

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealEvent] ON;

INSERT INTO [BCIQ_ODS].[ods].[DealEvent] (
[Name]
      ,[Code]
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
[Name]
      ,[Code] + 100000
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
    FROM [BCIQ_ODS].[ods].[DealEvent_BU_4182023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealEvent] OFF;

ALTER TABLE [ods].[DealEvent] CHECK CONSTRAINT ALL;

ALTER TABLE [ods].[DealDocuments] CHECK CONSTRAINT ALL;

ALTER TABLE [ods].[DocumentInfo] CHECK CONSTRAINT ALL;

-- Create Backups
SELECT * INTO [ods].[DealDocuments_BU_4182023_nakhaiev] FROM [ods].[DealDocuments];
SELECT * INTO [ods].[DocumentInfo_BU_4182023_nakhaiev] FROM [ods].[DocumentInfo];

-- update DealDocuments
ALTER TABLE [ods].[DealDocuments] NOCHECK CONSTRAINT ALL;

UPDATE [ods].[DealDocuments] SET [DealEventCode] = [DealEventCode] + 100000

ALTER TABLE [ods].[DealDocuments] CHECK CONSTRAINT ALL;

-- update DocumentInfo
ALTER TABLE [ods].[DocumentInfo] NOCHECK CONSTRAINT ALL;

UPDATE [ods].[DocumentInfo] SET [DealEventCode] = [DealEventCode] + 100000

ALTER TABLE [ods].[DocumentInfo] CHECK CONSTRAINT ALL;