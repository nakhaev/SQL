
-- Cretae Indication Details from Product Details on mdm --
ALTER TABLE [mdm].[IndicationDetail] DROP CONSTRAINT [FK_StandardIndicationCode_IndicationDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail] DROP CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm]
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
ALTER TABLE [mdm].[IndicationDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_IndicationDetail_Mdm] FOREIGN KEY([StandardIndicationCode])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[IndicationDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_IndicationDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm] FOREIGN KEY([IndicationDetailCode])
REFERENCES [mdm].[IndicationDetail] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm]


-- Copy Indication Details from mdm to ods --
GO
ALTER TABLE [ods].[IndicationDetail]  DROP CONSTRAINT [FK_StandardIndicationCode_IndicationDetail]
GO
ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_IndicationDetailCode_License]
GO
ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_IndicationDetailCode_LicenseDetail]
GO
ALTER TABLE [ods].[Pipeline]  DROP CONSTRAINT [FK_IndicationDetailCode_Pipeline]
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
ALTER TABLE [ods].[IndicationDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_IndicationDetail] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[IndicationDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_IndicationDetail]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_License] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_IndicationDetailCode_License]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_LicenseDetail] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_IndicationDetailCode_LicenseDetail]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_Pipeline] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_IndicationDetailCode_Pipeline]

-- Set Indication Detail Code for Pipelines --
GO
ALTER TABLE [ods].[Pipeline]  DROP CONSTRAINT [FK_IndicationDetailCode_Pipeline]
GO
UPDATE [BCIQ_ODS].[mdm].[Pipeline] SET IndicationDetailCode = ProductDetail_Code
UPDATE [BCIQ_ODS].[ods].[Pipeline] SET IndicationDetailCode = ProductDetail_Code
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_Pipeline] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_IndicationDetailCode_Pipeline]

-- Set Indication Details for Licwnse --
ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_IndicationDetailCode_License]
GO
UPDATE [BCIQ_ODS].[ods].[License] SET IndicationDetailCode = ProductDetail_Code
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_License] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_IndicationDetailCode_License]