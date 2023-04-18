SELECT * INTO [ods].[DealDocuments_BU_4182023_2_nakhaiev] FROM [ods].[DealDocuments];

ALTER TABLE [ods].[DealDocuments_BU_4182023_2_nakhaiev] ADD [OldCode] [int] NULL;

UPDATE [ods].[DealDocuments_BU_4182023_2_nakhaiev] SET [OldCode] = [Code];

ALTER TABLE [ods].[DealDocuments] NOCHECK CONSTRAINT ALL;

ALTER TABLE [ods].[DealDocumentText] NOCHECK CONSTRAINT ALL;

delete from [ods].[DealDocuments];

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealDocuments] ON;

INSERT INTO [BCIQ_ODS].[ods].[DealDocuments] (
[Code]
      ,[Name]
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
[Code] + 100000
      ,[Name]
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
    FROM [BCIQ_ODS].[ods].[DealDocuments_BU_4182023_2_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[DealDocuments] OFF;

ALTER TABLE [ods].[DealDocuments] CHECK CONSTRAINT ALL;

ALTER TABLE [ods].[DealDocumentText] CHECK CONSTRAINT ALL;

-- Create Backups
SELECT * INTO [ods].[DealDocumentText_BU_4182023_nakhaiev] FROM [ods].[DealDocumentText];

-- update DealDocumentText
ALTER TABLE [ods].[DealDocumentText] NOCHECK CONSTRAINT ALL;

UPDATE [ods].[DealDocumentText] SET [DealDocument_Code] = [DealDocument_Code] + 100000

ALTER TABLE [ods].[DealDocumentText] CHECK CONSTRAINT ALL;