
-- Cretae Indication Details from Product Details on mdm --
ALTER TABLE [mdm].[IndicationDetail] NOCHECK CONSTRAINT ALL;
GO
ALTER TABLE [mdm].[LicenseDetail] NOCHECK CONSTRAINT ALL;
GO
DELETE FROM [BCIQ_ODS].[mdm].[IndicationDetail]
GO
SET IDENTITY_INSERT [BCIQ_ODS].[mdm].[IndicationDetail] ON;
GO
INSERT INTO [BCIQ_ODS].[mdm].[IndicationDetail] (
      [Code]
      ,[Name]
      ,[StandardIndicationCode]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[Deleted]
) (
    SELECT
      [Code]
      ,[Name]
      ,[StandardIndication_Code] as [StandardIndicationCode]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,0
    FROM [BCIQ_ODS].[mdm].[ProductDetail]
);
GO
SET IDENTITY_INSERT [BCIQ_ODS].[mdm].[IndicationDetail] OFF;
GO
ALTER TABLE [mdm].[IndicationDetail] CHECK CONSTRAINT ALL;
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT ALL;

-- Copy Indication Details from mdm to ods --
GO
ALTER TABLE [ods].[IndicationDetail] NOCHECK CONSTRAINT ALL;
GO
ALTER TABLE [ods].[License] NOCHECK CONSTRAINT ALL;
GO
ALTER TABLE [ods].[LicenseDetail] NOCHECK CONSTRAINT ALL;
GO
ALTER TABLE [ods].[Pipeline] NOCHECK CONSTRAINT ALL;
GO
DELETE FROM [BCIQ_ODS].[ods].[IndicationDetail]
GO
SET IDENTITY_INSERT [BCIQ_ODS].[ods].[IndicationDetail] ON;
GO
INSERT INTO [BCIQ_ODS].[ods].[IndicationDetail] (
    [Code]
    ,[Name]
    ,[StandardIndicationCode]
    ,[CreatedUser]
    ,[UpdatedUser]
    ,[CreatedDateTime]
    ,[UpdatedDateTime]
    ,[QAReady]
    ,[SearchReady]
    ,[Posted]
) (
    SELECT
      [Code]
      ,[Name]
      ,[StandardIndicationCode]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,1
      ,1
      ,1
    FROM [BCIQ_ODS].[mdm].[IndicationDetail]
);
GO
SET IDENTITY_INSERT [BCIQ_ODS].[ods].[IndicationDetail] OFF;
GO
ALTER TABLE [ods].[IndicationDetail] CHECK CONSTRAINT ALL;
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT ALL;
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT ALL;
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT ALL;

-- Set Indication Detail Code for Pipelines --
GO
ALTER TABLE [ods].[Pipeline] NOCHECK CONSTRAINT ALL;
GO
ALTER TABLE [mdm].[Pipeline] NOCHECK CONSTRAINT ALL;
GO
UPDATE [BCIQ_ODS].[mdm].[Pipeline] SET IndicationDetailCode = ProductDetail_Code
UPDATE [BCIQ_ODS].[ods].[Pipeline] SET IndicationDetailCode = ProductDetail_Code
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT ALL;
GO
ALTER TABLE [mdm].[Pipeline] CHECK CONSTRAINT ALL;

-- Set Indication Details for Licwnse --
ALTER TABLE [ods].[License] NOCHECK CONSTRAINT ALL;
GO
UPDATE [BCIQ_ODS].[ods].[License] SET IndicationDetailCode = ProductDetail_Code
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT ALL;
