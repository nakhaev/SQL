-- Cretae License Details in mdm
ALTER TABLE [mdm].[LicenseDetail] NOCHECK CONSTRAINT ALL;
GO
DELETE FROM [BCIQ_ODS].[mdm].[LicenseDetail]
GO
INSERT INTO [BCIQ_ODS].[mdm].[LicenseDetail] (
       [LicenseCode]
      ,[IndicationDetailCode]
      ,[StandardIndicationCode]
      ,[DiseaseCategoryCode]
      ,[PipelineDetailCode]
) (
    SELECT 
      l.[Code] as [LicenseCode]
     ,l.[ProductDetail_Code] as [IndicationDetailCode]
     ,pd.[StandardIndication_Code] as [StandardIndicationCode]
     ,si.[DiseaseCategory_Code] as [DiseaseCategoryCode]
     ,NULL
    FROM [BCIQ_ODS].[mdm].[License] l
    LEFT JOIN [BCIQ_ODS].[mdm].[ProductDetail] pd on pd.[Code] = l.[ProductDetail_Code]
    LEFT JOIN [BCIQ_ODS].[mdm].[StandardIndication] si on si.[Code] = pd.[StandardIndication_Code]
);
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT ALL;

-- Copy License Details from mdm to ods
ALTER TABLE [ods].[LicenseDetail] NOCHECK CONSTRAINT ALL;
GO
DELETE FROM [BCIQ_ODS].[ods].[LicenseDetail];
GO
SET IDENTITY_INSERT [BCIQ_ODS].[ods].[LicenseDetail] ON;
GO
INSERT INTO [BCIQ_ODS].[ods].[LicenseDetail] (
       [Code]
      ,[LicenseCode]
      ,[IndicationDetailCode]
      ,[StandardIndicationCode]
      ,[DiseaseCategoryCode]
      ,[PipelineDetailCode]
) (
    SELECT 
       [Code]
      ,[LicenseCode]
      ,[IndicationDetailCode]
      ,[StandardIndicationCode]
      ,[DiseaseCategoryCode]
      ,[PipelineDetailCode]
    FROM [BCIQ_ODS].[mdm].[LicenseDetail]
);
SET IDENTITY_INSERT [BCIQ_ODS].[ods].[LicenseDetail] OFF;
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT ALL;
