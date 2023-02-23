ALTER TABLE [mdm].[CompanyUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyUrlHistory_Company] FOREIGN KEY([CompanyCode])
REFERENCES [mdm].[Company_BU_02_05_2020] ([Code])
GO
ALTER TABLE [mdm].[CompanyUrlHistory] CHECK CONSTRAINT [FK_CompanyUrlHistory_Company]
GO
ALTER TABLE [mdm].[DiseaseCategoryUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryUrlHistory_DiseaseCategory] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [mdm].[DiseaseCategory] ([Code])
GO
ALTER TABLE [mdm].[DiseaseCategoryUrlHistory] CHECK CONSTRAINT [FK_DiseaseCategoryUrlHistory_DiseaseCategory]
GO
ALTER TABLE [mdm].[HotTopic_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_HotTopic_to_Company_Mdm] FOREIGN KEY([Company_Code])
REFERENCES [mdm].[Company] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Company] CHECK CONSTRAINT [FK_Company_Code_HotTopic_to_Company_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company_Mdm] FOREIGN KEY([HotTopic_Code])
REFERENCES [mdm].[HotTopic] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Company] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Indication]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication_Mdm] FOREIGN KEY([HotTopic_Code])
REFERENCES [mdm].[HotTopic] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Indication] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Indication]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication_Mdm] FOREIGN KEY([StandardIndication_Code])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Indication] CHECK CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product_Mdm] FOREIGN KEY([HotTopic_Code])
REFERENCES [mdm].[HotTopic] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Product] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_HotTopic_to_Product_Mdm] FOREIGN KEY([Product_Code])
REFERENCES [mdm].[Product] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Product] CHECK CONSTRAINT [FK_Product_Code_HotTopic_to_Product_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Target]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target_Mdm] FOREIGN KEY([HotTopic_Code])
REFERENCES [mdm].[HotTopic] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Target] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target_Mdm]
GO
ALTER TABLE [mdm].[HotTopic_to_Target]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target_Mdm] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [mdm].[MolecularTarget] ([Code])
GO
ALTER TABLE [mdm].[HotTopic_to_Target] CHECK CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target_Mdm]
GO
ALTER TABLE [mdm].[IndicationDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_IndicationDetail_Mdm] FOREIGN KEY([StandardIndicationCode])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[IndicationDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_IndicationDetail_Mdm]
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
GO
ALTER TABLE [mdm].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode_MS] FOREIGN KEY([Product_Code])
REFERENCES [mdm].[Product] ([Code])
GO
ALTER TABLE [mdm].[Milestone] CHECK CONSTRAINT [FK_ProductCode_MS]
GO
ALTER TABLE [mdm].[MolecularTargetFamilyUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetFamilyUrlHistory_MolecularTargetFamily] FOREIGN KEY([MolecularTargetFamilyCode])
REFERENCES [mdm].[MolecularTargetFamily] ([Code])
GO
ALTER TABLE [mdm].[MolecularTargetFamilyUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetFamilyUrlHistory_MolecularTargetFamily]
GO
ALTER TABLE [mdm].[MolecularTargetUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetUrlHistory_MolecularTarget] FOREIGN KEY([MolecularTargetCode])
REFERENCES [mdm].[MolecularTarget] ([Code])
GO
ALTER TABLE [mdm].[MolecularTargetUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetUrlHistory_MolecularTarget]
GO
ALTER TABLE [mdm].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode] FOREIGN KEY([Product_Code])
REFERENCES [mdm].[Product] ([Code])
GO
ALTER TABLE [mdm].[Pipeline] CHECK CONSTRAINT [FK_ProductCode]
GO
ALTER TABLE [mdm].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail_Mdm] FOREIGN KEY([PhaseOfDevelopment_Code])
REFERENCES [mdm].[ClinicalPhase] ([Code])
GO
ALTER TABLE [mdm].[PipelineDetail] CHECK CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineDetail_Mdm] FOREIGN KEY([PipelineCode])
REFERENCES [mdm].[Pipeline] ([Code])
GO
ALTER TABLE [mdm].[PipelineDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail_Mdm] FOREIGN KEY([RegulatoryDesignationRegionCode])
REFERENCES [mdm].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [mdm].[PipelineDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail_Mdm] FOREIGN KEY([RouteOfAdministration_Code])
REFERENCES [mdm].[RouteOfAdministration] ([Code])
GO
ALTER TABLE [mdm].[PipelineDetail] CHECK CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail_Mdm] FOREIGN KEY([PipelineCode])
REFERENCES [mdm].[Pipeline] ([Code])
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail_Mdm] FOREIGN KEY([RegulatoryDesignationCode])
REFERENCES [mdm].[RegulatoryDesignation] ([Code])
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail_Mdm]
GO
ALTER TABLE [mdm].[Product_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetCode_PMT] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [mdm].[MolecularTarget] ([Code])
GO
ALTER TABLE [mdm].[Product_to_MolecularTarget] CHECK CONSTRAINT [FK_MolecularTargetCode_PMT]
GO
ALTER TABLE [mdm].[ProductDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_PD] FOREIGN KEY([StandardIndication_Code])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[ProductDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_PD]
GO
ALTER TABLE [mdm].[ProductUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductUrlHistory_Product] FOREIGN KEY([ProductCode])
REFERENCES [mdm].[Product] ([Code])
GO
ALTER TABLE [mdm].[ProductUrlHistory] CHECK CONSTRAINT [FK_ProductUrlHistory_Product]
GO
ALTER TABLE [mdm].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetailCode_RD] FOREIGN KEY([ProductDetail_Code])
REFERENCES [mdm].[ProductDetail] ([Code])
GO
ALTER TABLE [mdm].[RegulatoryDesignation] CHECK CONSTRAINT [FK_ProductDetailCode_RD]
GO
ALTER TABLE [mdm].[StandardIndicationUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationUrlHistory_StandardIndication] FOREIGN KEY([StandardIndicationCode])
REFERENCES [mdm].[StandardIndication] ([Code])
GO
ALTER TABLE [mdm].[StandardIndicationUrlHistory] CHECK CONSTRAINT [FK_StandardIndicationUrlHistory_StandardIndication]
GO
