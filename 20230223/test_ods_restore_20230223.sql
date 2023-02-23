ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIAuditLog_AEDIAuditLog] FOREIGN KEY([Uid])
REFERENCES [ods].[AEDIAuditLog] ([Uid])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIAuditLog_AEDIAuditLog]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIAuditLog_CompanyCode] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[AEDIAuditLog] NOCHECK CONSTRAINT [FK_AEDIAuditLog_CompanyCode]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIIndicationRecord_UId] FOREIGN KEY([AediIndicationRecordId])
REFERENCES [ods].[AEDIIndicationRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIIndicationRecord_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPhaseRecord_UId] FOREIGN KEY([AediPhaseRecordId])
REFERENCES [ods].[AEDIPhaseRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIPhaseRecord_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AediPipelineRecordId_UId] FOREIGN KEY([AediPipelineRecordId])
REFERENCES [ods].[AEDIPipelineRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AediPipelineRecordId_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineScrapedData_UId] FOREIGN KEY([AediPipelineScrapedDataId])
REFERENCES [ods].[AEDIPipelineScrapedData] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIPipelineScrapedData_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIProductRecord_UId] FOREIGN KEY([AediProductRecordId])
REFERENCES [ods].[AEDIProductRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_AEDIProductRecord_UId]
GO
ALTER TABLE [ods].[AEDIAuditLog]  WITH NOCHECK ADD  CONSTRAINT [FK_Agents_AgentID] FOREIGN KEY([AgentId])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[AEDIAuditLog] CHECK CONSTRAINT [FK_Agents_AgentID]
GO
ALTER TABLE [ods].[AEDIDocMLEntities]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIDocML__DocEn__11C38D69] FOREIGN KEY([DocEntityId])
REFERENCES [ods].[AEDIDocEntityValues] ([UId])
GO
ALTER TABLE [ods].[AEDIDocMLEntities] CHECK CONSTRAINT [FK__AEDIDocML__DocEn__11C38D69]
GO
ALTER TABLE [ods].[AEDIDocMLEntities]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIDocML__DocMl__12B7B1A2] FOREIGN KEY([DocMlId])
REFERENCES [ods].[AEDIDocMLProcessed] ([UId])
GO
ALTER TABLE [ods].[AEDIDocMLEntities] CHECK CONSTRAINT [FK__AEDIDocML__DocMl__12B7B1A2]
GO
ALTER TABLE [ods].[AEDIIndicationRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIIndic__Indic__13ABD5DB] FOREIGN KEY([IndicationId])
REFERENCES [ods].[AEDIIndication] ([UId])
GO
ALTER TABLE [ods].[AEDIIndicationRecord] CHECK CONSTRAINT [FK__AEDIIndic__Indic__13ABD5DB]
GO
ALTER TABLE [ods].[AEDIIndicationRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIIndic__Valid__149FFA14] FOREIGN KEY([ValidationId])
REFERENCES [ods].[AEDIValidationLog] ([UId])
GO
ALTER TABLE [ods].[AEDIIndicationRecord] CHECK CONSTRAINT [FK__AEDIIndic__Valid__149FFA14]
GO
ALTER TABLE [ods].[AEDIPhaseRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPhase__Phase__15941E4D] FOREIGN KEY([PhaseId])
REFERENCES [ods].[AEDIPhase] ([UId])
GO
ALTER TABLE [ods].[AEDIPhaseRecord] CHECK CONSTRAINT [FK__AEDIPhase__Phase__15941E4D]
GO
ALTER TABLE [ods].[AEDIPhaseRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPhase__Valid__16884286] FOREIGN KEY([ValidationId])
REFERENCES [ods].[AEDIValidationLog] ([UId])
GO
ALTER TABLE [ods].[AEDIPhaseRecord] CHECK CONSTRAINT [FK__AEDIPhase__Valid__16884286]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPipel__Indic__3536E6D8] FOREIGN KEY([IndicationRecordId])
REFERENCES [ods].[AEDIIndicationRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK__AEDIPipel__Indic__3536E6D8]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPipel__Phase__362B0B11] FOREIGN KEY([PhaseRecordId])
REFERENCES [ods].[AEDIPhaseRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK__AEDIPipel__Phase__362B0B11]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPipel__Pipel__51A6D819] FOREIGN KEY([PipelineId])
REFERENCES [ods].[AEDIPipelineScrapedData] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK__AEDIPipel__Pipel__51A6D819]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIPipel__Produ__38135383] FOREIGN KEY([ProductRecordId])
REFERENCES [ods].[AEDIProductRecord] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK__AEDIPipel__Produ__38135383]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineRecord_LastReviewedBy] FOREIGN KEY([LastReviewedBy])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK_AEDIPipelineRecord_LastReviewedBy]
GO
ALTER TABLE [ods].[AEDIPipelineRecord]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineRecord_PipelineCode] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[AEDIPipelineRecord] CHECK CONSTRAINT [FK_AEDIPipelineRecord_PipelineCode]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineScrapedStateUpdatedBy] FOREIGN KEY([PipelineScrapedStateUpdatedBy])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] CHECK CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineScrapedStateUpdatedBy]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineUrlId] FOREIGN KEY([PipelineUrlId])
REFERENCES [ods].[PipelineUrl] ([UrlId])
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] CHECK CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineUrlId]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData]  WITH NOCHECK ADD  CONSTRAINT [FK_AEDIPipelineScrapedData_StrategyId] FOREIGN KEY([StrategyId])
REFERENCES [ods].[AEDIScraperStrategies] ([UId])
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] CHECK CONSTRAINT [FK_AEDIPipelineScrapedData_StrategyId]
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyCode_AEDIPipelineScrapedData] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[AEDIPipelineScrapedData] NOCHECK CONSTRAINT [FK_CompanyCode_AEDIPipelineScrapedData]
GO
ALTER TABLE [ods].[AEDIProductRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIProdu__Produ__2105D0F9] FOREIGN KEY([ProductId])
REFERENCES [ods].[AEDIProduct] ([UId])
GO
ALTER TABLE [ods].[AEDIProductRecord] CHECK CONSTRAINT [FK__AEDIProdu__Produ__2105D0F9]
GO
ALTER TABLE [ods].[AEDIProductRecord]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIProdu__Valid__21F9F532] FOREIGN KEY([ValidationId])
REFERENCES [ods].[AEDIValidationLog] ([UId])
GO
ALTER TABLE [ods].[AEDIProductRecord] CHECK CONSTRAINT [FK__AEDIProdu__Valid__21F9F532]
GO
ALTER TABLE [ods].[AEDIValidationEntityLog]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIValid__DocEn__22EE196B] FOREIGN KEY([DocEntityId])
REFERENCES [ods].[AEDIDocEntityValues] ([UId])
GO
ALTER TABLE [ods].[AEDIValidationEntityLog] CHECK CONSTRAINT [FK__AEDIValid__DocEn__22EE196B]
GO
ALTER TABLE [ods].[AEDIValidationEntityLog]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIValid__Valid__23E23DA4] FOREIGN KEY([ValidationId])
REFERENCES [ods].[AEDIValidationLog] ([UId])
GO
ALTER TABLE [ods].[AEDIValidationEntityLog] CHECK CONSTRAINT [FK__AEDIValid__Valid__23E23DA4]
GO
ALTER TABLE [ods].[AEDIValidationLog]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIValid__Valid__24D661DD] FOREIGN KEY([ValidationTypeId])
REFERENCES [ods].[AEDIValidationTypes] ([UId])
GO
ALTER TABLE [ods].[AEDIValidationLog] CHECK CONSTRAINT [FK__AEDIValid__Valid__24D661DD]
GO
ALTER TABLE [ods].[AEDIValidationLog]  WITH NOCHECK ADD  CONSTRAINT [FK__AEDIValid__Valid__25CA8616] FOREIGN KEY([ValidatorId])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[AEDIValidationLog] CHECK CONSTRAINT [FK__AEDIValid__Valid__25CA8616]
GO
ALTER TABLE [ods].[AssetType]  WITH NOCHECK ADD  CONSTRAINT [FK_AssetClass_Code_AssetType] FOREIGN KEY([AssetClass_Code])
REFERENCES [ods].[AssetClass] ([Code])
GO
ALTER TABLE [ods].[AssetType] CHECK CONSTRAINT [FK_AssetClass_Code_AssetType]
GO
ALTER TABLE [ods].[BCBiotechHub]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_BCBiotechHub] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[BCBiotechHub] CHECK CONSTRAINT [FK_Country_Code_BCBiotechHub]
GO
ALTER TABLE [ods].[BCBiotechHub_To_State]  WITH NOCHECK ADD  CONSTRAINT [FK_BCBiotechHub_Code_BCBiotechHub_to_State] FOREIGN KEY([BCBiotechHub_Code])
REFERENCES [ods].[BCBiotechHub] ([Code])
GO
ALTER TABLE [ods].[BCBiotechHub_To_State] CHECK CONSTRAINT [FK_BCBiotechHub_Code_BCBiotechHub_to_State]
GO
ALTER TABLE [ods].[BCBiotechHub_To_State]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_BCBiotechHub_to_State] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[BCBiotechHub_To_State] CHECK CONSTRAINT [FK_Country_Code_BCBiotechHub_to_State]
GO
ALTER TABLE [ods].[BCBiotechHub_To_State]  WITH NOCHECK ADD  CONSTRAINT [FK_State_Code_BCBiotechHub_to_State] FOREIGN KEY([State_Code])
REFERENCES [ods].[State] ([Code])
GO
ALTER TABLE [ods].[BCBiotechHub_To_State] CHECK CONSTRAINT [FK_State_Code_BCBiotechHub_to_State]
GO
ALTER TABLE [ods].[BusinessType]  WITH NOCHECK ADD  CONSTRAINT [FK_BusinessClass_Code_BusinessType] FOREIGN KEY([BusinessClass_Code])
REFERENCES [ods].[BusinessClass] ([Code])
GO
ALTER TABLE [ods].[BusinessType] CHECK CONSTRAINT [FK_BusinessClass_Code_BusinessType]
GO
ALTER TABLE [ods].[City]  WITH NOCHECK ADD  CONSTRAINT [FK_BiotechHUB_Code_City] FOREIGN KEY([BiotechHub_Code])
REFERENCES [ods].[BCBiotechHub] ([Code])
GO
ALTER TABLE [ods].[City] CHECK CONSTRAINT [FK_BiotechHUB_Code_City]
GO
ALTER TABLE [ods].[City]  WITH NOCHECK ADD  CONSTRAINT [FK_State_Code_City] FOREIGN KEY([State_Code])
REFERENCES [ods].[State] ([Code])
GO
ALTER TABLE [ods].[City] CHECK CONSTRAINT [FK_State_Code_City]
GO
ALTER TABLE [ods].[ClinicalPhase]  WITH NOCHECK ADD  CONSTRAINT [FK_ClinicalPhaseSubCategory_ClinicalPhase] FOREIGN KEY([SubCategory_Code])
REFERENCES [ods].[ClinicalPhaseSubCategory] ([Code])
GO
ALTER TABLE [ods].[ClinicalPhase] CHECK CONSTRAINT [FK_ClinicalPhaseSubCategory_ClinicalPhase]
GO
ALTER TABLE [ods].[ClinicalPhaseSubCategory]  WITH NOCHECK ADD  CONSTRAINT [FK_ClinicalPhaseCategory_ClinicalPhaseSubCategory] FOREIGN KEY([Category_Code])
REFERENCES [ods].[ClinicalPhaseCategory] ([Code])
GO
ALTER TABLE [ods].[ClinicalPhaseSubCategory] CHECK CONSTRAINT [FK_ClinicalPhaseCategory_ClinicalPhaseSubCategory]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_BCBiotechHub_Code_Company] FOREIGN KEY([BCBiotechHub_Code])
REFERENCES [ods].[BCBiotechHub] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_BCBiotechHub_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyCategory_Code_Company] FOREIGN KEY([CompanyCategory_Code])
REFERENCES [ods].[CompanyCategory] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_CompanyCategory_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyType_Code_Company] FOREIGN KEY([CompanyType_Code])
REFERENCES [ods].[CompanyType] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_CompanyType_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_Company] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_Country_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_ParentCompany_Code_Company] FOREIGN KEY([ParentCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_ParentCompany_Code_Company]
GO
ALTER TABLE [ods].[Company]  WITH NOCHECK ADD  CONSTRAINT [FK_TierId_Company] FOREIGN KEY([TierId])
REFERENCES [ods].[Tier] ([TierId])
GO
ALTER TABLE [ods].[Company] CHECK CONSTRAINT [FK_TierId_Company]
GO
ALTER TABLE [ods].[Company_to_BusinessType]  WITH NOCHECK ADD  CONSTRAINT [FK_BusinessType_Code_Company_to_BusinessType] FOREIGN KEY([BusinessType_Code])
REFERENCES [ods].[BusinessType] ([Code])
GO
ALTER TABLE [ods].[Company_to_BusinessType] CHECK CONSTRAINT [FK_BusinessType_Code_Company_to_BusinessType]
GO
ALTER TABLE [ods].[Company_to_BusinessType]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Company_to_BusinessType] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Company_to_BusinessType] NOCHECK CONSTRAINT [FK_Company_Code_Company_to_BusinessType]
GO
ALTER TABLE [ods].[Company_to_CompanyGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Company_to_CompanyGroup] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Company_to_CompanyGroup] NOCHECK CONSTRAINT [FK_Company_Code_Company_to_CompanyGroup]
GO
ALTER TABLE [ods].[Company_to_CompanyGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyGroup_Code_Company_to_CompanyGroup] FOREIGN KEY([CompanyGroup_Code])
REFERENCES [ods].[CompanyGroup] ([Code])
GO
ALTER TABLE [ods].[Company_to_CompanyGroup] CHECK CONSTRAINT [FK_CompanyGroup_Code_Company_to_CompanyGroup]
GO
ALTER TABLE [ods].[CompanyMarketCap]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyGroup_Code_CompanyMarketCap] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyMarketCap] NOCHECK CONSTRAINT [FK_CompanyGroup_Code_CompanyMarketCap]
GO
ALTER TABLE [ods].[CompanyNameHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_CurrentCompanyCode_ODS] FOREIGN KEY([CurrentCompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyNameHistory] NOCHECK CONSTRAINT [FK_CurrentCompanyCode_ODS]
GO
ALTER TABLE [ods].[CompanyNameHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_PreviousCompanyCode_ODS] FOREIGN KEY([PreviousCompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyNameHistory] NOCHECK CONSTRAINT [FK_PreviousCompanyCode_ODS]
GO
ALTER TABLE [ods].[CompanyReviewHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_CompanyReviewHistory] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyReviewHistory] NOCHECK CONSTRAINT [FK_Company_Code_CompanyReviewHistory]
GO
ALTER TABLE [ods].[CompanyUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_CompanyUrlHistory] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[CompanyUrlHistory] NOCHECK CONSTRAINT [FK_Company_Code_CompanyUrlHistory]
GO
ALTER TABLE [ods].[Country]  WITH NOCHECK ADD  CONSTRAINT [FK_SubRegion_Code_Country] FOREIGN KEY([SubRegion_Code])
REFERENCES [ods].[SubRegion] ([Code])
GO
ALTER TABLE [ods].[Country] CHECK CONSTRAINT [FK_SubRegion_Code_Country]
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure]  WITH NOCHECK ADD  CONSTRAINT [FK_CommercialPaymentStructure_Code_Deal_to_CommercialPaymentStructure] FOREIGN KEY([CommercialPaymentStructure_Code])
REFERENCES [ods].[CommercialPaymentStructure] ([Code])
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT [FK_CommercialPaymentStructure_Code_Deal_to_CommercialPaymentStructure]
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_CommercialPaymentStructure] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_CommercialPaymentStructure]
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure]  WITH NOCHECK ADD  CONSTRAINT [FK_DealCode_Deal_to_CommercialPaymentStructure] FOREIGN KEY([DealCode])
REFERENCES [ods].[Deals] ([Code])
GO
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT [FK_DealCode_Deal_to_CommercialPaymentStructure]
GO
ALTER TABLE [ods].[Deal_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Deal_to_Company] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Company] NOCHECK CONSTRAINT [FK_Company_Code_Deal_to_Company]
GO
ALTER TABLE [ods].[Deal_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyRole_Code_Deal_to_Company] FOREIGN KEY([CompanyRole_Code])
REFERENCES [ods].[CompanyDealRole] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Company] CHECK CONSTRAINT [FK_CompanyRole_Code_Deal_to_Company]
GO
ALTER TABLE [ods].[Deal_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Deal_Code_Deal_to_Company] FOREIGN KEY([Deal_Code])
REFERENCES [ods].[Deals] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Company] CHECK CONSTRAINT [FK_Deal_Code_Deal_to_Company]
GO
ALTER TABLE [ods].[Deal_to_Geography]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_Deal_to_Geography] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT [FK_Country_Code_Deal_to_Geography]
GO
ALTER TABLE [ods].[Deal_to_Geography]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_Geography] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_Geography]
GO
ALTER TABLE [ods].[Deal_to_Geography]  WITH NOCHECK ADD  CONSTRAINT [FK_Region_Code_Deal_to_Geography] FOREIGN KEY([Region_Code])
REFERENCES [ods].[Region] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT [FK_Region_Code_Deal_to_Geography]
GO
ALTER TABLE [ods].[Deal_to_Geography]  WITH NOCHECK ADD  CONSTRAINT [FK_SubRegion_Code_Deal_to_Geography] FOREIGN KEY([SubRegion_Code])
REFERENCES [ods].[SubRegion] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT [FK_SubRegion_Code_Deal_to_Geography]
GO
ALTER TABLE [ods].[Deal_to_MechanismOfAction]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_MechanismOfAction] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_MechanismOfAction] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_MechanismOfAction]
GO
ALTER TABLE [ods].[Deal_to_MechanismOfAction]  WITH NOCHECK ADD  CONSTRAINT [FK_MechanismOfAction_Code_Deal_to_MechanismOfAction] FOREIGN KEY([MechanismOfAction_Code])
REFERENCES [ods].[MechanismOfAction] ([Code])
GO
ALTER TABLE [ods].[Deal_to_MechanismOfAction] CHECK CONSTRAINT [FK_MechanismOfAction_Code_Deal_to_MechanismOfAction]
GO
ALTER TABLE [ods].[Deal_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_MolecularTarget] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_MolecularTarget] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_MolecularTarget]
GO
ALTER TABLE [ods].[Deal_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTarget_Code_Deal_to_MolecularTarget] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [ods].[MolecularTarget] ([Code])
GO
ALTER TABLE [ods].[Deal_to_MolecularTarget] CHECK CONSTRAINT [FK_MolecularTarget_Code_Deal_to_MolecularTarget]
GO
ALTER TABLE [ods].[Deal_to_PartnershipScope]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_PartnershipScope] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_PartnershipScope] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_PartnershipScope]
GO
ALTER TABLE [ods].[Deal_to_PartnershipScope]  WITH NOCHECK ADD  CONSTRAINT [FK_PartnershipScope_Code_Deal_to_PartnershipScope] FOREIGN KEY([PartnershipScope_Code])
REFERENCES [ods].[PartnershipScope] ([Code])
GO
ALTER TABLE [ods].[Deal_to_PartnershipScope] CHECK CONSTRAINT [FK_PartnershipScope_Code_Deal_to_PartnershipScope]
GO
ALTER TABLE [ods].[Deal_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_Product] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Product] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_Product]
GO
ALTER TABLE [ods].[Deal_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_Deal_to_Product] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Deal_to_Product] CHECK CONSTRAINT [FK_Product_Code_Deal_to_Product]
GO
ALTER TABLE [ods].[Deal_to_StandardIndication]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_StandardIndication] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_StandardIndication] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_StandardIndication]
GO
ALTER TABLE [ods].[Deal_to_StandardIndication]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndication_Code_Deal_to_StandardIndication] FOREIGN KEY([StandardIndication_Code])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[Deal_to_StandardIndication] CHECK CONSTRAINT [FK_StandardIndication_Code_Deal_to_StandardIndication]
GO
ALTER TABLE [ods].[Deal_to_TherapeuticModality]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_Deal_to_TherapeuticModality] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[Deal_to_TherapeuticModality] CHECK CONSTRAINT [FK_DealAsset_Code_Deal_to_TherapeuticModality]
GO
ALTER TABLE [ods].[Deal_to_TherapeuticModality]  WITH NOCHECK ADD  CONSTRAINT [FK_TherapeuticModality_Code_Deal_to_TherapeuticModality] FOREIGN KEY([TherapeuticModality_Code])
REFERENCES [ods].[TherapeuticModality] ([Code])
GO
ALTER TABLE [ods].[Deal_to_TherapeuticModality] CHECK CONSTRAINT [FK_TherapeuticModality_Code_Deal_to_TherapeuticModality]
GO
ALTER TABLE [ods].[DealAsset_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_DealAsset_to_Company] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_Company] NOCHECK CONSTRAINT [FK_Company_Code_DealAsset_to_Company]
GO
ALTER TABLE [ods].[DealAsset_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyDealRole_Code_DealAsset_to_Company] FOREIGN KEY([CompanyDealRole_Code])
REFERENCES [ods].[CompanyDealRole] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_Company] CHECK CONSTRAINT [FK_CompanyDealRole_Code_DealAsset_to_Company]
GO
ALTER TABLE [ods].[DealAsset_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_DealAsset_to_Company] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_Company] CHECK CONSTRAINT [FK_DealAsset_Code_DealAsset_to_Company]
GO
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAssetCode_DealAsset_to_DiseaseCategory] FOREIGN KEY([DealAssetCode])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] CHECK CONSTRAINT [FK_DealAssetCode_DealAsset_to_DiseaseCategory]
GO
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_DealAsset_to_DiseaseCategory] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [ods].[DiseaseCategory_BU_02_21_2023] ([Code])
GO
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] CHECK CONSTRAINT [FK_DiseaseCategoryCode_DealAsset_to_DiseaseCategory]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_AssetType_Code_DealAssets] FOREIGN KEY([AssetType_Code])
REFERENCES [ods].[AssetType] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_AssetType_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_Deal_Code_DealAssets] FOREIGN KEY([Deal_Code])
REFERENCES [ods].[Deals] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_Deal_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_DealType_Code_DealAssets] FOREIGN KEY([DealType_Code])
REFERENCES [ods].[DealType] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_DealType_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_DrugDevelopmentScope_Code_DealAssets] FOREIGN KEY([DrugDevelopmentScope_Code])
REFERENCES [ods].[DrugDevelopmentScope] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_DrugDevelopmentScope_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_MaxProductStatus_Code_DealAssets] FOREIGN KEY([MaxProductStatus_Code])
REFERENCES [ods].[ClinicalPhase] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_MaxProductStatus_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_RareOrphanIntent_Code_DealAssets] FOREIGN KEY([RareOrphanIntent_Code])
REFERENCES [ods].[RareOrphanIntent] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_RareOrphanIntent_Code_DealAssets]
GO
ALTER TABLE [ods].[DealAssets]  WITH NOCHECK ADD  CONSTRAINT [FK_TrialStatus_Code_DealAssets] FOREIGN KEY([TrialStatus_Code])
REFERENCES [ods].[TrialStatus] ([Code])
GO
ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT [FK_TrialStatus_Code_DealAssets]
GO
ALTER TABLE [ods].[DealDocuments]  WITH NOCHECK ADD  CONSTRAINT [FK_DealEventCode_DealDocuments] FOREIGN KEY([DealEventCode])
REFERENCES [ods].[DealEvent] ([Code])
GO
ALTER TABLE [ods].[DealDocuments] CHECK CONSTRAINT [FK_DealEventCode_DealDocuments]
GO
ALTER TABLE [ods].[DealDocumentText]  WITH NOCHECK ADD  CONSTRAINT [FK_DealDocument_Code_DealDocumentText] FOREIGN KEY([DealDocument_Code])
REFERENCES [ods].[DealDocuments] ([Code])
GO
ALTER TABLE [ods].[DealDocumentText] CHECK CONSTRAINT [FK_DealDocument_Code_DealDocumentText]
GO
ALTER TABLE [ods].[DealEvent]  WITH NOCHECK ADD  CONSTRAINT [FK_Deal_Code_DealEvent] FOREIGN KEY([Deal_Code])
REFERENCES [ods].[Deals] ([Code])
GO
ALTER TABLE [ods].[DealEvent] CHECK CONSTRAINT [FK_Deal_Code_DealEvent]
GO
ALTER TABLE [ods].[DealEvent]  WITH NOCHECK ADD  CONSTRAINT [FK_EventType_Code_DealEvent] FOREIGN KEY([EventType_Code])
REFERENCES [ods].[DealEventType] ([Code])
GO
ALTER TABLE [ods].[DealEvent] CHECK CONSTRAINT [FK_EventType_Code_DealEvent]
GO
ALTER TABLE [ods].[DealEventType_to_Classifier]  WITH NOCHECK ADD  CONSTRAINT [FK_DealEventClassifierCode_Deal_Code_DealEventType_to_Classifier] FOREIGN KEY([DealEventClassifierCode])
REFERENCES [ods].[DealEventClassfier] ([Code])
GO
ALTER TABLE [ods].[DealEventType_to_Classifier] CHECK CONSTRAINT [FK_DealEventClassifierCode_Deal_Code_DealEventType_to_Classifier]
GO
ALTER TABLE [ods].[Deals]  WITH NOCHECK ADD  CONSTRAINT [FK_Exclusivity_Code_Deals] FOREIGN KEY([Exclusivity_Code])
REFERENCES [ods].[DealExclusivity] ([Code])
GO
ALTER TABLE [ods].[Deals] CHECK CONSTRAINT [FK_Exclusivity_Code_Deals]
GO
ALTER TABLE [ods].[Deals]  WITH NOCHECK ADD  CONSTRAINT [FK_Status_Code_Deals] FOREIGN KEY([Status_Code])
REFERENCES [ods].[DealStatus] ([Code])
GO
ALTER TABLE [ods].[Deals] CHECK CONSTRAINT [FK_Status_Code_Deals]
GO
ALTER TABLE [ods].[Deals]  WITH NOCHECK ADD  CONSTRAINT [FK_TerminationReason_Code_Deals] FOREIGN KEY([TerminationReason_Code])
REFERENCES [ods].[DealTerminationReason] ([Code])
GO
ALTER TABLE [ods].[Deals] CHECK CONSTRAINT [FK_TerminationReason_Code_Deals]
GO
ALTER TABLE [ods].[DealType]  WITH NOCHECK ADD  CONSTRAINT [FK_DealClass_Code_DealType] FOREIGN KEY([DealClass_Code])
REFERENCES [ods].[DealClass] ([Code])
GO
ALTER TABLE [ods].[DealType] CHECK CONSTRAINT [FK_DealClass_Code_DealType]
GO
ALTER TABLE [ods].[DiseaseCategorySynonym]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategorySynonym] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [ods].[DiseaseCategory] ([Code])
GO
ALTER TABLE [ods].[DiseaseCategorySynonym] CHECK CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategorySynonym]
GO
ALTER TABLE [ods].[DiseaseCategoryUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategoryUrlHistory] FOREIGN KEY([DiseaseCategoryCode])
REFERENCES [ods].[DiseaseCategory] ([Code])
GO
ALTER TABLE [ods].[DiseaseCategoryUrlHistory] CHECK CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategoryUrlHistory]
GO
ALTER TABLE [ods].[DocumentInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_CurrencyCode_DocumentInfo] FOREIGN KEY([CurrencyCode])
REFERENCES [ods].[Currency] ([Code])
GO
ALTER TABLE [ods].[DocumentInfo] CHECK CONSTRAINT [FK_CurrencyCode_DocumentInfo]
GO
ALTER TABLE [ods].[DocumentInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_DealEventCode_DocumentInfo] FOREIGN KEY([DealEventCode])
REFERENCES [ods].[DealEvent] ([Code])
GO
ALTER TABLE [ods].[DocumentInfo] CHECK CONSTRAINT [FK_DealEventCode_DocumentInfo]
GO
ALTER TABLE [ods].[DocumentInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_DocInputTextCode_DocumentInfo] FOREIGN KEY([DocInputTextCode])
REFERENCES [ods].[DocInputText] ([Code])
GO
ALTER TABLE [ods].[DocumentInfo] CHECK CONSTRAINT [FK_DocInputTextCode_DocumentInfo]
GO
ALTER TABLE [ods].[Earnings]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Earnings] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Earnings] NOCHECK CONSTRAINT [FK_Company_Code_Earnings]
GO
ALTER TABLE [ods].[Earnings]  WITH NOCHECK ADD  CONSTRAINT [FK_Currency_Code_Earnings] FOREIGN KEY([Currency_Code])
REFERENCES [ods].[Currency] ([Code])
GO
ALTER TABLE [ods].[Earnings] CHECK CONSTRAINT [FK_Currency_Code_Earnings]
GO
ALTER TABLE [ods].[Earnings]  WITH NOCHECK ADD  CONSTRAINT [FK_FiscalPeriod_Code_Earnings] FOREIGN KEY([FiscalPeriod_Code])
REFERENCES [ods].[FiscalPeriod] ([Code])
GO
ALTER TABLE [ods].[Earnings] CHECK CONSTRAINT [FK_FiscalPeriod_Code_Earnings]
GO
ALTER TABLE [ods].[Financing_to_Financier]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Financing_to_Financier] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Financing_to_Financier] NOCHECK CONSTRAINT [FK_Company_Code_Financing_to_Financier]
GO
ALTER TABLE [ods].[Financing_to_Financier]  WITH NOCHECK ADD  CONSTRAINT [FK_Financing_Code_Financing_to_Financier] FOREIGN KEY([Financing_Code])
REFERENCES [ods].[Financings] ([Code])
GO
ALTER TABLE [ods].[Financing_to_Financier] CHECK CONSTRAINT [FK_Financing_Code_Financing_to_Financier]
GO
ALTER TABLE [ods].[Financings]  WITH NOCHECK ADD  CONSTRAINT [FK_Currency_Code_Financings] FOREIGN KEY([Currency_Code])
REFERENCES [ods].[Currency] ([Code])
GO
ALTER TABLE [ods].[Financings] CHECK CONSTRAINT [FK_Currency_Code_Financings]
GO
ALTER TABLE [ods].[Financings]  WITH NOCHECK ADD  CONSTRAINT [FK_FinancingType_Code_Financings] FOREIGN KEY([FinancingType_Code])
REFERENCES [ods].[FinancingType] ([Code])
GO
ALTER TABLE [ods].[Financings] CHECK CONSTRAINT [FK_FinancingType_Code_Financings]
GO
ALTER TABLE [ods].[Financings]  WITH NOCHECK ADD  CONSTRAINT [FK_ReceivingCompany_Code_Financings] FOREIGN KEY([ReceivingCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Financings] NOCHECK CONSTRAINT [FK_ReceivingCompany_Code_Financings]
GO
ALTER TABLE [ods].[FinancingType]  WITH NOCHECK ADD  CONSTRAINT [FK_FinancingTypeSubCategory_Code_FinancingType] FOREIGN KEY([FinancingTypeSubCategory_Code])
REFERENCES [ods].[FinancingTypeSubCategory] ([Code])
GO
ALTER TABLE [ods].[FinancingType] CHECK CONSTRAINT [FK_FinancingTypeSubCategory_Code_FinancingType]
GO
ALTER TABLE [ods].[FinancingTypeSubCategory]  WITH NOCHECK ADD  CONSTRAINT [FK_FinancingTypeCategory_Code_FinancingTypeSubCategory] FOREIGN KEY([FinancingTypeCategory_Code])
REFERENCES [ods].[FinancingTypeCategory] ([Code])
GO
ALTER TABLE [ods].[FinancingTypeSubCategory] CHECK CONSTRAINT [FK_FinancingTypeCategory_Code_FinancingTypeSubCategory]
GO
ALTER TABLE [ods].[HotTopic_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_HotTopic_to_Company] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Company] NOCHECK CONSTRAINT [FK_Company_Code_HotTopic_to_Company]
GO
ALTER TABLE [ods].[HotTopic_to_Company]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company] FOREIGN KEY([HotTopic_Code])
REFERENCES [ods].[HotTopic] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Company] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company]
GO
ALTER TABLE [ods].[HotTopic_to_Indication]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication] FOREIGN KEY([HotTopic_Code])
REFERENCES [ods].[HotTopic] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Indication] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication]
GO
ALTER TABLE [ods].[HotTopic_to_Indication]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication] FOREIGN KEY([StandardIndication_Code])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Indication] CHECK CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication]
GO
ALTER TABLE [ods].[HotTopic_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product] FOREIGN KEY([HotTopic_Code])
REFERENCES [ods].[HotTopic] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Product] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product]
GO
ALTER TABLE [ods].[HotTopic_to_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_HotTopic_to_Product] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Product] CHECK CONSTRAINT [FK_Product_Code_HotTopic_to_Product]
GO
ALTER TABLE [ods].[HotTopic_to_Target]  WITH NOCHECK ADD  CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target] FOREIGN KEY([HotTopic_Code])
REFERENCES [ods].[HotTopic] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Target] CHECK CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target]
GO
ALTER TABLE [ods].[HotTopic_to_Target]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [ods].[MolecularTarget] ([Code])
GO
ALTER TABLE [ods].[HotTopic_to_Target] CHECK CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target]
GO
ALTER TABLE [ods].[IndicationDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_IndicationDetail] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[IndicationDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_IndicationDetail]
GO
ALTER TABLE [ods].[IPOs]  WITH NOCHECK ADD  CONSTRAINT [FK_StockTicker_Code_IPOs] FOREIGN KEY([StockTicker_Code])
REFERENCES [ods].[StockTicker] ([Code])
GO
ALTER TABLE [ods].[IPOs] CHECK CONSTRAINT [FK_StockTicker_Code_IPOs]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_DealAsset_Code_License] FOREIGN KEY([DealAsset_Code])
REFERENCES [ods].[DealAssets] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_DealAsset_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_License] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_IndicationDetailCode_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_InLicenseCompany_Code_License] FOREIGN KEY([InLicenseCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[License] NOCHECK CONSTRAINT [FK_InLicenseCompany_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_OutLicenseCompany_Code_License] FOREIGN KEY([OutLicenseCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[License] NOCHECK CONSTRAINT [FK_OutLicenseCompany_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_PartnershipTerms_Code_License] FOREIGN KEY([PartnershipTerms_Code])
REFERENCES [ods].[PartnershipTerms] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_PartnershipTerms_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_License] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_PipelineCode_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_License] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_Product_Code_License]
GO
ALTER TABLE [ods].[License]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetail_Code_License] FOREIGN KEY([ProductDetail_Code])
REFERENCES [ods].[ProductDetail] ([Code])
GO
ALTER TABLE [ods].[License] CHECK CONSTRAINT [FK_ProductDetail_Code_License]
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
GO
ALTER TABLE [ods].[LinkifyIgnoreOriginCompany]  WITH NOCHECK ADD  CONSTRAINT [FK_CompanyCode_LinkifyIgnoreOriginCompany] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[LinkifyIgnoreOriginCompany] NOCHECK CONSTRAINT [FK_CompanyCode_LinkifyIgnoreOriginCompany]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneIntent_Milestone] FOREIGN KEY([MilestoneIntent_Code])
REFERENCES [ods].[MilestoneIntent] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_MilestoneIntent_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneStatus_Milestone] FOREIGN KEY([MilestoneStatus_Code])
REFERENCES [ods].[MilestoneStatus] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_MilestoneStatus_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneType_Milestone] FOREIGN KEY([MilestoneType_Code])
REFERENCES [ods].[MilestoneType] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_MilestoneType_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_Milestone] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_PipelineCode_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_Milestone] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_Product_Code_Milestone]
GO
ALTER TABLE [ods].[Milestone]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetail_Code_Milestone] FOREIGN KEY([ProductDetail_Code])
REFERENCES [ods].[ProductDetail] ([Code])
GO
ALTER TABLE [ods].[Milestone] CHECK CONSTRAINT [FK_ProductDetail_Code_Milestone]
GO
ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneIntent_Code_MilestoneType_to_MilestoneIntent] FOREIGN KEY([MilestoneIntent_Code])
REFERENCES [ods].[MilestoneIntent] ([Code])
GO
ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent] CHECK CONSTRAINT [FK_MilestoneIntent_Code_MilestoneType_to_MilestoneIntent]
GO
ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent]  WITH NOCHECK ADD  CONSTRAINT [FK_MilestoneType_Code_MilestoneType_to_MilestoneIntent] FOREIGN KEY([MilestoneType_Code])
REFERENCES [ods].[MilestoneType] ([Code])
GO
ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent] CHECK CONSTRAINT [FK_MilestoneType_Code_MilestoneType_to_MilestoneIntent]
GO
ALTER TABLE [ods].[MLPrediction]  WITH NOCHECK ADD  CONSTRAINT [FK_MLPrediction_EntityTypeCode] FOREIGN KEY([EntityTypeCode])
REFERENCES [ods].[EntityType] ([Code])
GO
ALTER TABLE [ods].[MLPrediction] CHECK CONSTRAINT [FK_MLPrediction_EntityTypeCode]
GO
ALTER TABLE [ods].[MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetFamily_MolecularTarget] FOREIGN KEY([MolecularTargetFamily_Code])
REFERENCES [ods].[MolecularTargetFamily] ([Code])
GO
ALTER TABLE [ods].[MolecularTarget] CHECK CONSTRAINT [FK_MolecularTargetFamily_MolecularTarget]
GO
ALTER TABLE [ods].[MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTarget] FOREIGN KEY([MolecularTargetFamily_Code])
REFERENCES [ods].[MolecularTargetFamily] ([Code])
GO
ALTER TABLE [ods].[MolecularTarget] CHECK CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTarget]
GO
ALTER TABLE [ods].[MolecularTargetFamilyUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTargetFamilyUrlHistory] FOREIGN KEY([MolecularTargetFamilyCode])
REFERENCES [ods].[MolecularTargetFamily] ([Code])
GO
ALTER TABLE [ods].[MolecularTargetFamilyUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTargetFamilyUrlHistory]
GO
ALTER TABLE [ods].[MolecularTargetUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTargetCode_MolecularTargetUrlHistory] FOREIGN KEY([MolecularTargetCode])
REFERENCES [ods].[MolecularTarget] ([Code])
GO
ALTER TABLE [ods].[MolecularTargetUrlHistory] CHECK CONSTRAINT [FK_MolecularTargetCode_MolecularTargetUrlHistory]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Pipeline] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Pipeline] NOCHECK CONSTRAINT [FK_Company_Code_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_IndicationDetailCode_Pipeline] FOREIGN KEY([IndicationDetailCode])
REFERENCES [ods].[IndicationDetail] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_IndicationDetailCode_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_PhaseOfDevelopmentCode_Pipeline] FOREIGN KEY([PhaseOfDevelopment_Code])
REFERENCES [ods].[ClinicalPhase] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_PhaseOfDevelopmentCode_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode_ODS] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_ProductCode_ODS]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetailCode_Pipeline] FOREIGN KEY([ProductDetail_Code])
REFERENCES [ods].[ProductDetail] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_ProductDetailCode_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionCode_Pipeline] FOREIGN KEY([RegulatoryDesignationRegionCode])
REFERENCES [ods].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionCode_Pipeline]
GO
ALTER TABLE [ods].[Pipeline]  WITH NOCHECK ADD  CONSTRAINT [FK_RouteOfAdministrationCode_Pipeline] FOREIGN KEY([RouteOfAdministration_Code])
REFERENCES [ods].[RouteOfAdministration] ([Code])
GO
ALTER TABLE [ods].[Pipeline] CHECK CONSTRAINT [FK_RouteOfAdministrationCode_Pipeline]
GO
ALTER TABLE [ods].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail] FOREIGN KEY([PhaseOfDevelopment_Code])
REFERENCES [ods].[ClinicalPhase] ([Code])
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail]
GO
ALTER TABLE [ods].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineDetail] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineDetail]
GO
ALTER TABLE [ods].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail] FOREIGN KEY([RegulatoryDesignationRegionCode])
REFERENCES [ods].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail]
GO
ALTER TABLE [ods].[PipelineDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail] FOREIGN KEY([RouteOfAdministration_Code])
REFERENCES [ods].[RouteOfAdministration] ([Code])
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail]
GO
ALTER TABLE [ods].[PipelineMLPrediction]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineMLPrediction_MLPredictionCode] FOREIGN KEY([MLPredictionCode])
REFERENCES [ods].[MLPrediction] ([Code])
GO
ALTER TABLE [ods].[PipelineMLPrediction] CHECK CONSTRAINT [FK_PipelineMLPrediction_MLPredictionCode]
GO
ALTER TABLE [ods].[PipelineMLPrediction]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineMLPrediction_PipelineRecordId] FOREIGN KEY([PipelineRecordId])
REFERENCES [ods].[AEDIPipelineRecord] ([UId])
ON DELETE CASCADE
GO
ALTER TABLE [ods].[PipelineMLPrediction] CHECK CONSTRAINT [FK_PipelineMLPrediction_PipelineRecordId]
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail]
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail] FOREIGN KEY([RegulatoryDesignationCode])
REFERENCES [ods].[RegulatoryDesignation] ([Code])
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail]
GO
ALTER TABLE [ods].[PipelineUrl]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_to_PipelineUrl] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[PipelineUrl] NOCHECK CONSTRAINT [FK_Company_to_PipelineUrl]
GO
ALTER TABLE [ods].[PipelineUrl]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineUrl_ValidatorId] FOREIGN KEY([ValidatorId])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[PipelineUrl] CHECK CONSTRAINT [FK_PipelineUrl_ValidatorId]
GO
ALTER TABLE [ods].[PipelineUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_to_PipelineUrlHistory] FOREIGN KEY([CompanyCode])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[PipelineUrlHistory] NOCHECK CONSTRAINT [FK_Company_to_PipelineUrlHistory]
GO
ALTER TABLE [ods].[PipelineUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineUrlHistory_ValidatorId] FOREIGN KEY([ValidatorId])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[PipelineUrlHistory] CHECK CONSTRAINT [FK_PipelineUrlHistory_ValidatorId]
GO
ALTER TABLE [ods].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_OriginatorCompany_Code_Product] FOREIGN KEY([OriginatorCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Product] NOCHECK CONSTRAINT [FK_OriginatorCompany_Code_Product]
GO
ALTER TABLE [ods].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_OwnerCompany_Code_Product] FOREIGN KEY([OwnerCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Product] NOCHECK CONSTRAINT [FK_OwnerCompany_Code_Product]
GO
ALTER TABLE [ods].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_PartnerCompany_Code_Product] FOREIGN KEY([PartnerCompany_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Product] NOCHECK CONSTRAINT [FK_PartnerCompany_Code_Product]
GO
ALTER TABLE [ods].[Product_to_MechanismOfAction]  WITH NOCHECK ADD  CONSTRAINT [FK_MechanismOfAction_Product_to_MechanismOfAction] FOREIGN KEY([MechanismOfAction_Code])
REFERENCES [ods].[MechanismOfAction] ([Code])
GO
ALTER TABLE [ods].[Product_to_MechanismOfAction] CHECK CONSTRAINT [FK_MechanismOfAction_Product_to_MechanismOfAction]
GO
ALTER TABLE [ods].[Product_to_MechanismOfAction]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Product_to_MechanismOfAction] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Product_to_MechanismOfAction] CHECK CONSTRAINT [FK_Product_Product_to_MechanismOfAction]
GO
ALTER TABLE [ods].[Product_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_MolecularTarget_Product_to_MolecularTarget] FOREIGN KEY([MolecularTarget_Code])
REFERENCES [ods].[MolecularTarget] ([Code])
GO
ALTER TABLE [ods].[Product_to_MolecularTarget] CHECK CONSTRAINT [FK_MolecularTarget_Product_to_MolecularTarget]
GO
ALTER TABLE [ods].[Product_to_MolecularTarget]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Product_to_MolecularTarget] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Product_to_MolecularTarget] CHECK CONSTRAINT [FK_Product_Product_to_MolecularTarget]
GO
ALTER TABLE [ods].[Product_to_StandardIndication]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code_Product_to_StandardIndication] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Product_to_StandardIndication] CHECK CONSTRAINT [FK_Product_Code_Product_to_StandardIndication]
GO
ALTER TABLE [ods].[Product_to_TherapeuticModality]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Product_to_TherapeuticModality] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[Product_to_TherapeuticModality] CHECK CONSTRAINT [FK_Product_Product_to_TherapeuticModality]
GO
ALTER TABLE [ods].[Product_to_TherapeuticModality]  WITH NOCHECK ADD  CONSTRAINT [FK_TherapeuticModality_Product_to_TherapeuticModality] FOREIGN KEY([TherapeuticModality_Code])
REFERENCES [ods].[TherapeuticModality] ([Code])
GO
ALTER TABLE [ods].[Product_to_TherapeuticModality] CHECK CONSTRAINT [FK_TherapeuticModality_Product_to_TherapeuticModality]
GO
ALTER TABLE [ods].[ProductDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_ProductDetail] FOREIGN KEY([StandardIndication_Code])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[ProductDetail] CHECK CONSTRAINT [FK_StandardIndicationCode_ProductDetail]
GO
ALTER TABLE [ods].[ProductNames]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Code] FOREIGN KEY([Product_Code])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[ProductNames] CHECK CONSTRAINT [FK_Product_Code]
GO
ALTER TABLE [ods].[ProductNames]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductNameType_Code] FOREIGN KEY([ProductNameType_Code])
REFERENCES [ods].[ProductNameTypes] ([Code])
GO
ALTER TABLE [ods].[ProductNames] CHECK CONSTRAINT [FK_ProductNameType_Code]
GO
ALTER TABLE [ods].[ProductUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode_ProductUrlHistory] FOREIGN KEY([ProductCode])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[ProductUrlHistory] CHECK CONSTRAINT [FK_ProductCode_ProductUrlHistory]
GO
ALTER TABLE [ods].[RegulationRegionCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_CountryCode_RegulationRegionCountry] FOREIGN KEY([CountryCode])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[RegulationRegionCountry] CHECK CONSTRAINT [FK_CountryCode_RegulationRegionCountry]
GO
ALTER TABLE [ods].[RegulationRegionCountry]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionCode_RegulationRegionCountry] FOREIGN KEY([RegulatoryDesignationRegionCode])
REFERENCES [ods].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [ods].[RegulationRegionCountry] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionCode_RegulationRegionCountry]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_RegulatoryDesignation] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_PipelineCode_RegulatoryDesignation]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductDetail_Code_RegulatoryDesignation] FOREIGN KEY([ProductDetail_Code])
REFERENCES [ods].[ProductDetail] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_ProductDetail_Code_RegulatoryDesignation]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegion_Code_RegulatoryDesignation] FOREIGN KEY([RegulatoryDesignationRegion_Code])
REFERENCES [ods].[RegulatoryDesignationRegion] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_RegulatoryDesignationRegion_Code_RegulatoryDesignation]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationRegionTypeCode_RegulatoryDesignation] FOREIGN KEY([RegulatoryDesignationRegionTypeCode])
REFERENCES [ods].[RegulatoryDesignationRegionType] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_RegulatoryDesignationRegionTypeCode_RegulatoryDesignation]
GO
ALTER TABLE [ods].[RegulatoryDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationType_Code_RegulatoryDesignation] FOREIGN KEY([RegulatoryDesignationType_Code])
REFERENCES [ods].[RegulatoryDesignationType] ([Code])
GO
ALTER TABLE [ods].[RegulatoryDesignation] CHECK CONSTRAINT [FK_RegulatoryDesignationType_Code_RegulatoryDesignation]
GO
ALTER TABLE [ods].[StandardIndication]  WITH NOCHECK ADD  CONSTRAINT [FK_DiseaseCategoryCode_StandardIndication] FOREIGN KEY([DiseaseCategory_Code])
REFERENCES [ods].[DiseaseCategory] ([Code])
GO
ALTER TABLE [ods].[StandardIndication] CHECK CONSTRAINT [FK_DiseaseCategoryCode_StandardIndication]
GO
ALTER TABLE [ods].[StandardIndicationSynonym]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_StandardIndicationSynonym] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[StandardIndicationSynonym] CHECK CONSTRAINT [FK_StandardIndicationCode_StandardIndicationSynonym]
GO
ALTER TABLE [ods].[StandardIndicationUrlHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_StandardIndicationCode_StandardIndicationUrlHistory] FOREIGN KEY([StandardIndicationCode])
REFERENCES [ods].[StandardIndication] ([Code])
GO
ALTER TABLE [ods].[StandardIndicationUrlHistory] CHECK CONSTRAINT [FK_StandardIndicationCode_StandardIndicationUrlHistory]
GO
ALTER TABLE [ods].[State]  WITH NOCHECK ADD  CONSTRAINT [FK_Country_Code_State] FOREIGN KEY([Country_Code])
REFERENCES [ods].[Country] ([Code])
GO
ALTER TABLE [ods].[State] CHECK CONSTRAINT [FK_Country_Code_State]
GO
ALTER TABLE [ods].[StockFundamentals]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_StockFundamentals] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[StockFundamentals] NOCHECK CONSTRAINT [FK_Company_Code_StockFundamentals]
GO
ALTER TABLE [ods].[StockFundamentals]  WITH NOCHECK ADD  CONSTRAINT [FK_StockTicker_Code_StockFundamentals] FOREIGN KEY([StockTicker_Code])
REFERENCES [ods].[StockTicker] ([Code])
GO
ALTER TABLE [ods].[StockFundamentals] CHECK CONSTRAINT [FK_StockTicker_Code_StockFundamentals]
GO
ALTER TABLE [ods].[Stocks]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Stocks] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Stocks] NOCHECK CONSTRAINT [FK_Company_Code_Stocks]
GO
ALTER TABLE [ods].[Stocks2]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_Stocks2] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[Stocks2] NOCHECK CONSTRAINT [FK_Company_Code_Stocks2]
GO
ALTER TABLE [ods].[StockSplits]  WITH NOCHECK ADD  CONSTRAINT [FK_StockTicker_Code_StockSplits] FOREIGN KEY([StockTicker_Code])
REFERENCES [ods].[StockTicker] ([Code])
GO
ALTER TABLE [ods].[StockSplits] CHECK CONSTRAINT [FK_StockTicker_Code_StockSplits]
GO
ALTER TABLE [ods].[StocksV32]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_StocksV32] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[StocksV32] NOCHECK CONSTRAINT [FK_Company_Code_StocksV32]
GO
ALTER TABLE [ods].[StockTicker]  WITH NOCHECK ADD  CONSTRAINT [FK_Company_Code_StockTicker] FOREIGN KEY([Company_Code])
REFERENCES [ods].[Company] ([Code])
GO
ALTER TABLE [ods].[StockTicker] NOCHECK CONSTRAINT [FK_Company_Code_StockTicker]
GO
ALTER TABLE [ods].[StockTicker]  WITH NOCHECK ADD  CONSTRAINT [FK_StockExchange_Code_StockTicker] FOREIGN KEY([StockExchange_Code])
REFERENCES [ods].[StockExchange] ([Code])
GO
ALTER TABLE [ods].[StockTicker] CHECK CONSTRAINT [FK_StockExchange_Code_StockTicker]
GO
ALTER TABLE [ods].[SubRegion]  WITH NOCHECK ADD  CONSTRAINT [FK_Region_Code_SubRegion] FOREIGN KEY([Region_Code])
REFERENCES [ods].[Region] ([Code])
GO
ALTER TABLE [ods].[SubRegion] CHECK CONSTRAINT [FK_Region_Code_SubRegion]
GO
ALTER TABLE [ods].[ValidatorProductComparison]  WITH NOCHECK ADD  CONSTRAINT [FK_AgentCode_ValidatorProductComparison] FOREIGN KEY([AgentCode])
REFERENCES [ods].[Agents] ([AgentID])
GO
ALTER TABLE [ods].[ValidatorProductComparison] CHECK CONSTRAINT [FK_AgentCode_ValidatorProductComparison]
GO
ALTER TABLE [ods].[ValidatorProductComparison]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductCode_ValidatorProductComparison] FOREIGN KEY([ProductCode])
REFERENCES [ods].[Product] ([Code])
GO
ALTER TABLE [ods].[ValidatorProductComparison] CHECK CONSTRAINT [FK_ProductCode_ValidatorProductComparison]
GO
