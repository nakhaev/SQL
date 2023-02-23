-- Cretae License Details in mdm
ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_LicenseCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_PipelineDetailCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_StandardIndicationCode_LicenseDetail_Mdm]
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
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail_Mdm] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [mdm].[DiseaseCategory] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm] FOREIGN KEY([IndicationDetailCode])
REFERENCES [mdm].[IndicationDetail] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_LicenseCode_LicenseDetail_Mdm] FOREIGN KEY([LicenseCode])
REFERENCES [mdm].[License] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_LicenseCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineDetailCode_LicenseDetail_Mdm] FOREIGN KEY([PipelineDetailCode])
REFERENCES [mdm].[PipelineDetail] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_PipelineDetailCode_LicenseDetail_Mdm]
GO
ALTER TABLE [mdm].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_LicenseDetail_Mdm] FOREIGN KEY([StandardIndicationCode])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[LicenseDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_LicenseDetail_Mdm]

-- Copy License Details from mdm to ods
ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_IndicationDetailCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_LicenseCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_PipelineDetailCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_StandardIndicationCode_LicenseDetail]
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
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [ods].[DiseaseCategory] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_LicenseDetail] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_IndicationDetailCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_LicenseCode_LicenseDetail] FOREIGN KEY([LicenseCode])
REFERENCES [ods].[License] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_LicenseCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineDetailCode_LicenseDetail] FOREIGN KEY([PipelineDetailCode])
REFERENCES [ods].[PipelineDetail] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_PipelineDetailCode_LicenseDetail]
GO
ALTER TABLE [ods].[LicenseDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_LicenseDetail] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[LicenseDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_LicenseDetail]
