ALTER TABLE [mdm].[CompanyUrlHistory]  DROP CONSTRAINT [FK_CompanyUrlHistory_Company] 

ALTER TABLE [mdm].[DiseaseCategoryUrlHistory]  DROP CONSTRAINT [FK_DiseaseCategoryUrlHistory_DiseaseCategory] 

ALTER TABLE [mdm].[HotTopic_to_Company]  DROP CONSTRAINT [FK_Company_Code_HotTopic_to_Company_Mdm] 

ALTER TABLE [mdm].[HotTopic_to_Company]  DROP CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company_Mdm] 

ALTER TABLE [mdm].[HotTopic_to_Indication]  DROP CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication_Mdm] 

ALTER TABLE [mdm].[HotTopic_to_Indication]  DROP CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication_Mdm] 

ALTER TABLE [mdm].[HotTopic_to_Product]  DROP CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product_Mdm] 

ALTER TABLE [mdm].[HotTopic_to_Product]  DROP CONSTRAINT [FK_Product_Code_HotTopic_to_Product_Mdm] 

ALTER TABLE [mdm].[HotTopic_to_Target]  DROP CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target_Mdm] 

ALTER TABLE [mdm].[HotTopic_to_Target]  DROP CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target_Mdm] 

ALTER TABLE [mdm].[IndicationDetail]  DROP CONSTRAINT [FK_StandardIndicationCode_IndicationDetail_Mdm] 

ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail_Mdm] 

ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_IndicationDetailCode_LicenseDetail_Mdm] 

ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_LicenseCode_LicenseDetail_Mdm] 

ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_PipelineDetailCode_LicenseDetail_Mdm] 

ALTER TABLE [mdm].[LicenseDetail]  DROP CONSTRAINT [FK_StandardIndicationCode_LicenseDetail_Mdm] 

ALTER TABLE [mdm].[Milestone]  DROP CONSTRAINT [FK_ProductCode_MS] 

ALTER TABLE [mdm].[MolecularTargetFamilyUrlHistory]  DROP CONSTRAINT [FK_MolecularTargetFamilyUrlHistory_MolecularTargetFamily] 

ALTER TABLE [mdm].[MolecularTargetUrlHistory]  DROP CONSTRAINT [FK_MolecularTargetUrlHistory_MolecularTarget] 

ALTER TABLE [mdm].[Pipeline]  DROP CONSTRAINT [FK_ProductCode] 

ALTER TABLE [mdm].[PipelineDetail]  DROP CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail_Mdm] 

ALTER TABLE [mdm].[PipelineDetail]  DROP CONSTRAINT [FK_PipelineCode_PipelineDetail_Mdm] 

ALTER TABLE [mdm].[PipelineDetail]  DROP CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail_Mdm] 

ALTER TABLE [mdm].[PipelineDetail]  DROP CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail_Mdm] 

ALTER TABLE [mdm].[PipelineRegulatoryDetail]  DROP CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail_Mdm] 

ALTER TABLE [mdm].[PipelineRegulatoryDetail]  DROP CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail_Mdm] 

ALTER TABLE [mdm].[Product_to_MolecularTarget]  DROP CONSTRAINT [FK_MolecularTargetCode_PMT] 

ALTER TABLE [mdm].[ProductDetail]  DROP CONSTRAINT [FK_StandardIndicationCode_PD] 

ALTER TABLE [mdm].[ProductUrlHistory]  DROP CONSTRAINT [FK_ProductUrlHistory_Product] 

ALTER TABLE [mdm].[RegulatoryDesignation]  DROP CONSTRAINT [FK_ProductDetailCode_RD] 

ALTER TABLE [mdm].[StandardIndicationUrlHistory]  DROP CONSTRAINT [FK_StandardIndicationUrlHistory_StandardIndication] 

