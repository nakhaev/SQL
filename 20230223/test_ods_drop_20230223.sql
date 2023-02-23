ALTER TABLE [ods].[AEDIAuditLog] DROP CONSTRAINT [FK_AEDIAuditLog_AEDIAuditLog] 

ALTER TABLE [ods].[AEDIAuditLog] DROP CONSTRAINT [FK_AEDIAuditLog_CompanyCode] 

ALTER TABLE [ods].[AEDIAuditLog] DROP CONSTRAINT [FK_AEDIIndicationRecord_UId] 

ALTER TABLE [ods].[AEDIAuditLog] DROP CONSTRAINT [FK_AEDIPhaseRecord_UId] 

ALTER TABLE [ods].[AEDIAuditLog] DROP CONSTRAINT [FK_AediPipelineRecordId_UId] 

ALTER TABLE [ods].[AEDIAuditLog] DROP CONSTRAINT [FK_AEDIPipelineScrapedData_UId] 

ALTER TABLE [ods].[AEDIAuditLog] DROP CONSTRAINT [FK_AEDIProductRecord_UId] 

ALTER TABLE [ods].[AEDIAuditLog] DROP CONSTRAINT [FK_Agents_AgentID] 

ALTER TABLE [ods].[AEDIDocMLEntities] DROP CONSTRAINT [FK__AEDIDocML__DocEn__11C38D69] 

ALTER TABLE [ods].[AEDIDocMLEntities] DROP CONSTRAINT [FK__AEDIDocML__DocMl__12B7B1A2] 

ALTER TABLE [ods].[AEDIIndicationRecord] DROP CONSTRAINT [FK__AEDIIndic__Indic__13ABD5DB] 

ALTER TABLE [ods].[AEDIIndicationRecord] DROP CONSTRAINT [FK__AEDIIndic__Valid__149FFA14] 

ALTER TABLE [ods].[AEDIPhaseRecord] DROP CONSTRAINT [FK__AEDIPhase__Phase__15941E4D] 

ALTER TABLE [ods].[AEDIPhaseRecord] DROP CONSTRAINT [FK__AEDIPhase__Valid__16884286] 

ALTER TABLE [ods].[AEDIPipelineRecord] DROP CONSTRAINT [FK__AEDIPipel__Indic__3536E6D8] 

ALTER TABLE [ods].[AEDIPipelineRecord] DROP CONSTRAINT [FK__AEDIPipel__Phase__362B0B11] 

ALTER TABLE [ods].[AEDIPipelineRecord] DROP CONSTRAINT [FK__AEDIPipel__Pipel__51A6D819] 

ALTER TABLE [ods].[AEDIPipelineRecord] DROP CONSTRAINT [FK__AEDIPipel__Produ__38135383] 

ALTER TABLE [ods].[AEDIPipelineRecord] DROP CONSTRAINT [FK_AEDIPipelineRecord_LastReviewedBy] 

ALTER TABLE [ods].[AEDIPipelineRecord] DROP CONSTRAINT [FK_AEDIPipelineRecord_PipelineCode] 

ALTER TABLE [ods].[AEDIPipelineScrapedData] DROP CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineScrapedStateUpdatedBy] 

ALTER TABLE [ods].[AEDIPipelineScrapedData] DROP CONSTRAINT [FK_AEDIPipelineScrapedData_PipelineUrlId] 

ALTER TABLE [ods].[AEDIPipelineScrapedData] DROP CONSTRAINT [FK_AEDIPipelineScrapedData_StrategyId] 

ALTER TABLE [ods].[AEDIPipelineScrapedData] DROP CONSTRAINT [FK_CompanyCode_AEDIPipelineScrapedData] 

ALTER TABLE [ods].[AEDIProductRecord] DROP CONSTRAINT [FK__AEDIProdu__Produ__2105D0F9] 

ALTER TABLE [ods].[AEDIProductRecord] DROP CONSTRAINT [FK__AEDIProdu__Valid__21F9F532] 

ALTER TABLE [ods].[AEDIValidationEntityLog] DROP CONSTRAINT [FK__AEDIValid__DocEn__22EE196B] 

ALTER TABLE [ods].[AEDIValidationEntityLog] DROP CONSTRAINT [FK__AEDIValid__Valid__23E23DA4] 

ALTER TABLE [ods].[AEDIValidationLog] DROP CONSTRAINT [FK__AEDIValid__Valid__24D661DD] 

ALTER TABLE [ods].[AEDIValidationLog] DROP CONSTRAINT [FK__AEDIValid__Valid__25CA8616] 

ALTER TABLE [ods].[AssetType] DROP CONSTRAINT [FK_AssetClass_Code_AssetType] 

ALTER TABLE [ods].[BCBiotechHub] DROP CONSTRAINT [FK_Country_Code_BCBiotechHub] 

ALTER TABLE [ods].[BCBiotechHub_To_State] DROP CONSTRAINT [FK_BCBiotechHub_Code_BCBiotechHub_to_State] 

ALTER TABLE [ods].[BCBiotechHub_To_State] DROP CONSTRAINT [FK_Country_Code_BCBiotechHub_to_State] 

ALTER TABLE [ods].[BCBiotechHub_To_State] DROP CONSTRAINT [FK_State_Code_BCBiotechHub_to_State] 

ALTER TABLE [ods].[BusinessType] DROP CONSTRAINT [FK_BusinessClass_Code_BusinessType] 

ALTER TABLE [ods].[City] DROP CONSTRAINT [FK_BiotechHUB_Code_City] 

ALTER TABLE [ods].[City] DROP CONSTRAINT [FK_State_Code_City] 

ALTER TABLE [ods].[ClinicalPhase] DROP CONSTRAINT [FK_ClinicalPhaseSubCategory_ClinicalPhase] 

ALTER TABLE [ods].[ClinicalPhaseSubCategory] DROP CONSTRAINT [FK_ClinicalPhaseCategory_ClinicalPhaseSubCategory] 

ALTER TABLE [ods].[Company] DROP CONSTRAINT [FK_BCBiotechHub_Code_Company] 

ALTER TABLE [ods].[Company] DROP CONSTRAINT [FK_CompanyCategory_Code_Company] 

ALTER TABLE [ods].[Company] DROP CONSTRAINT [FK_CompanyType_Code_Company] 

ALTER TABLE [ods].[Company] DROP CONSTRAINT [FK_Country_Code_Company] 

ALTER TABLE [ods].[Company] DROP CONSTRAINT [FK_ParentCompany_Code_Company] 

ALTER TABLE [ods].[Company] DROP CONSTRAINT [FK_TierId_Company] 

ALTER TABLE [ods].[Company_to_BusinessType] DROP CONSTRAINT [FK_BusinessType_Code_Company_to_BusinessType] 

ALTER TABLE [ods].[Company_to_BusinessType] DROP CONSTRAINT [FK_Company_Code_Company_to_BusinessType] 

ALTER TABLE [ods].[Company_to_CompanyGroup] DROP CONSTRAINT [FK_Company_Code_Company_to_CompanyGroup] 

ALTER TABLE [ods].[Company_to_CompanyGroup] DROP CONSTRAINT [FK_CompanyGroup_Code_Company_to_CompanyGroup] 

ALTER TABLE [ods].[CompanyMarketCap] DROP CONSTRAINT [FK_CompanyGroup_Code_CompanyMarketCap] 

ALTER TABLE [ods].[CompanyNameHistory] DROP CONSTRAINT [FK_CurrentCompanyCode_ODS] 

ALTER TABLE [ods].[CompanyNameHistory] DROP CONSTRAINT [FK_PreviousCompanyCode_ODS] 

ALTER TABLE [ods].[CompanyReviewHistory] DROP CONSTRAINT [FK_Company_Code_CompanyReviewHistory] 

ALTER TABLE [ods].[CompanyUrlHistory] DROP CONSTRAINT [FK_Company_Code_CompanyUrlHistory] 

ALTER TABLE [ods].[Country] DROP CONSTRAINT [FK_SubRegion_Code_Country] 

ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] DROP CONSTRAINT [FK_CommercialPaymentStructure_Code_Deal_to_CommercialPaymentStructure] 

ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] DROP CONSTRAINT [FK_DealAsset_Code_Deal_to_CommercialPaymentStructure] 

ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] DROP CONSTRAINT [FK_DealCode_Deal_to_CommercialPaymentStructure] 

ALTER TABLE [ods].[Deal_to_Company] DROP CONSTRAINT [FK_Company_Code_Deal_to_Company] 

ALTER TABLE [ods].[Deal_to_Company] DROP CONSTRAINT [FK_CompanyRole_Code_Deal_to_Company] 

ALTER TABLE [ods].[Deal_to_Company] DROP CONSTRAINT [FK_Deal_Code_Deal_to_Company] 

ALTER TABLE [ods].[Deal_to_Geography] DROP CONSTRAINT [FK_Country_Code_Deal_to_Geography] 

ALTER TABLE [ods].[Deal_to_Geography] DROP CONSTRAINT [FK_DealAsset_Code_Deal_to_Geography] 

ALTER TABLE [ods].[Deal_to_Geography] DROP CONSTRAINT [FK_Region_Code_Deal_to_Geography] 

ALTER TABLE [ods].[Deal_to_Geography] DROP CONSTRAINT [FK_SubRegion_Code_Deal_to_Geography] 

ALTER TABLE [ods].[Deal_to_MechanismOfAction] DROP CONSTRAINT [FK_DealAsset_Code_Deal_to_MechanismOfAction] 

ALTER TABLE [ods].[Deal_to_MechanismOfAction] DROP CONSTRAINT [FK_MechanismOfAction_Code_Deal_to_MechanismOfAction] 

ALTER TABLE [ods].[Deal_to_MolecularTarget] DROP CONSTRAINT [FK_DealAsset_Code_Deal_to_MolecularTarget] 

ALTER TABLE [ods].[Deal_to_MolecularTarget] DROP CONSTRAINT [FK_MolecularTarget_Code_Deal_to_MolecularTarget] 

ALTER TABLE [ods].[Deal_to_PartnershipScope] DROP CONSTRAINT [FK_DealAsset_Code_Deal_to_PartnershipScope] 

ALTER TABLE [ods].[Deal_to_PartnershipScope] DROP CONSTRAINT [FK_PartnershipScope_Code_Deal_to_PartnershipScope] 

ALTER TABLE [ods].[Deal_to_Product] DROP CONSTRAINT [FK_DealAsset_Code_Deal_to_Product] 

ALTER TABLE [ods].[Deal_to_Product] DROP CONSTRAINT [FK_Product_Code_Deal_to_Product] 

ALTER TABLE [ods].[Deal_to_StandardIndication] DROP CONSTRAINT [FK_DealAsset_Code_Deal_to_StandardIndication] 

ALTER TABLE [ods].[Deal_to_StandardIndication] DROP CONSTRAINT [FK_StandardIndication_Code_Deal_to_StandardIndication] 

ALTER TABLE [ods].[Deal_to_TherapeuticModality] DROP CONSTRAINT [FK_DealAsset_Code_Deal_to_TherapeuticModality] 

ALTER TABLE [ods].[Deal_to_TherapeuticModality] DROP CONSTRAINT [FK_TherapeuticModality_Code_Deal_to_TherapeuticModality] 

ALTER TABLE [ods].[DealAsset_to_Company] DROP CONSTRAINT [FK_Company_Code_DealAsset_to_Company] 

ALTER TABLE [ods].[DealAsset_to_Company] DROP CONSTRAINT [FK_CompanyDealRole_Code_DealAsset_to_Company] 

ALTER TABLE [ods].[DealAsset_to_Company] DROP CONSTRAINT [FK_DealAsset_Code_DealAsset_to_Company] 

ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] DROP CONSTRAINT [FK_DealAssetCode_DealAsset_to_DiseaseCategory] 

ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] DROP CONSTRAINT [FK_DiseaseCategoryCode_DealAsset_to_DiseaseCategory] 

ALTER TABLE [ods].[DealAssets] DROP CONSTRAINT [FK_AssetType_Code_DealAssets] 

ALTER TABLE [ods].[DealAssets] DROP CONSTRAINT [FK_Deal_Code_DealAssets] 

ALTER TABLE [ods].[DealAssets] DROP CONSTRAINT [FK_DealType_Code_DealAssets] 

ALTER TABLE [ods].[DealAssets] DROP CONSTRAINT [FK_DrugDevelopmentScope_Code_DealAssets] 

ALTER TABLE [ods].[DealAssets] DROP CONSTRAINT [FK_MaxProductStatus_Code_DealAssets] 

ALTER TABLE [ods].[DealAssets] DROP CONSTRAINT [FK_RareOrphanIntent_Code_DealAssets] 

ALTER TABLE [ods].[DealAssets] DROP CONSTRAINT [FK_TrialStatus_Code_DealAssets] 

ALTER TABLE [ods].[DealDocuments] DROP CONSTRAINT [FK_DealEventCode_DealDocuments] 

ALTER TABLE [ods].[DealDocumentText] DROP CONSTRAINT [FK_DealDocument_Code_DealDocumentText] 

ALTER TABLE [ods].[DealEvent] DROP CONSTRAINT [FK_Deal_Code_DealEvent] 

ALTER TABLE [ods].[DealEvent] DROP CONSTRAINT [FK_EventType_Code_DealEvent] 

ALTER TABLE [ods].[DealEventType_to_Classifier] DROP CONSTRAINT [FK_DealEventClassifierCode_Deal_Code_DealEventType_to_Classifier] 

ALTER TABLE [ods].[Deals] DROP CONSTRAINT [FK_Exclusivity_Code_Deals] 

ALTER TABLE [ods].[Deals] DROP CONSTRAINT [FK_Status_Code_Deals] 

ALTER TABLE [ods].[Deals] DROP CONSTRAINT [FK_TerminationReason_Code_Deals] 

ALTER TABLE [ods].[DealType] DROP CONSTRAINT [FK_DealClass_Code_DealType] 

ALTER TABLE [ods].[DiseaseCategorySynonym] DROP CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategorySynonym] 

ALTER TABLE [ods].[DiseaseCategoryUrlHistory] DROP CONSTRAINT [FK_DiseaseCategoryCode_DiseaseCategoryUrlHistory] 

ALTER TABLE [ods].[DocumentInfo] DROP CONSTRAINT [FK_CurrencyCode_DocumentInfo] 

ALTER TABLE [ods].[DocumentInfo] DROP CONSTRAINT [FK_DealEventCode_DocumentInfo] 

ALTER TABLE [ods].[DocumentInfo] DROP CONSTRAINT [FK_DocInputTextCode_DocumentInfo] 

ALTER TABLE [ods].[Earnings] DROP CONSTRAINT [FK_Company_Code_Earnings] 

ALTER TABLE [ods].[Earnings] DROP CONSTRAINT [FK_Currency_Code_Earnings] 

ALTER TABLE [ods].[Earnings] DROP CONSTRAINT [FK_FiscalPeriod_Code_Earnings] 

ALTER TABLE [ods].[Financing_to_Financier] DROP CONSTRAINT [FK_Company_Code_Financing_to_Financier] 

ALTER TABLE [ods].[Financing_to_Financier] DROP CONSTRAINT [FK_Financing_Code_Financing_to_Financier] 

ALTER TABLE [ods].[Financings] DROP CONSTRAINT [FK_Currency_Code_Financings] 

ALTER TABLE [ods].[Financings] DROP CONSTRAINT [FK_FinancingType_Code_Financings] 

ALTER TABLE [ods].[Financings] DROP CONSTRAINT [FK_ReceivingCompany_Code_Financings] 

ALTER TABLE [ods].[FinancingType] DROP CONSTRAINT [FK_FinancingTypeSubCategory_Code_FinancingType] 

ALTER TABLE [ods].[FinancingTypeSubCategory] DROP CONSTRAINT [FK_FinancingTypeCategory_Code_FinancingTypeSubCategory] 

ALTER TABLE [ods].[HotTopic_to_Company] DROP CONSTRAINT [FK_Company_Code_HotTopic_to_Company] 

ALTER TABLE [ods].[HotTopic_to_Company] DROP CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Company] 

ALTER TABLE [ods].[HotTopic_to_Indication] DROP CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Indication] 

ALTER TABLE [ods].[HotTopic_to_Indication] DROP CONSTRAINT [FK_StandardIndication_Code_HotTopic_to_Indication] 

ALTER TABLE [ods].[HotTopic_to_Product] DROP CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Product] 

ALTER TABLE [ods].[HotTopic_to_Product] DROP CONSTRAINT [FK_Product_Code_HotTopic_to_Product] 

ALTER TABLE [ods].[HotTopic_to_Target] DROP CONSTRAINT [FK_HotTopic_Code_HotTopic_to_Target] 

ALTER TABLE [ods].[HotTopic_to_Target] DROP CONSTRAINT [FK_MolecularTarget_Code_HotTopic_to_Target] 

ALTER TABLE [ods].[IndicationDetail] DROP CONSTRAINT [FK_StandardIndicationCode_IndicationDetail] 

ALTER TABLE [ods].[IPOs] DROP CONSTRAINT [FK_StockTicker_Code_IPOs] 

ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_DealAsset_Code_License] 

ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_IndicationDetailCode_License] 

ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_InLicenseCompany_Code_License] 

ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_OutLicenseCompany_Code_License] 

ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_PartnershipTerms_Code_License] 

ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_PipelineCode_License] 

ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_Product_Code_License] 

ALTER TABLE [ods].[License] DROP CONSTRAINT [FK_ProductDetail_Code_License] 

ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_DiseaseCategoryCode_LicenseDetail] 

ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_IndicationDetailCode_LicenseDetail] 

ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_LicenseCode_LicenseDetail] 

ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_PipelineDetailCode_LicenseDetail] 

ALTER TABLE [ods].[LicenseDetail] DROP CONSTRAINT [FK_StandardIndicationCode_LicenseDetail] 

ALTER TABLE [ods].[LinkifyIgnoreOriginCompany] DROP CONSTRAINT [FK_CompanyCode_LinkifyIgnoreOriginCompany] 

ALTER TABLE [ods].[Milestone] DROP CONSTRAINT [FK_MilestoneIntent_Milestone] 

ALTER TABLE [ods].[Milestone] DROP CONSTRAINT [FK_MilestoneStatus_Milestone] 

ALTER TABLE [ods].[Milestone] DROP CONSTRAINT [FK_MilestoneType_Milestone] 

ALTER TABLE [ods].[Milestone] DROP CONSTRAINT [FK_PipelineCode_Milestone] 

ALTER TABLE [ods].[Milestone] DROP CONSTRAINT [FK_Product_Code_Milestone] 

ALTER TABLE [ods].[Milestone] DROP CONSTRAINT [FK_ProductDetail_Code_Milestone] 

ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent] DROP CONSTRAINT [FK_MilestoneIntent_Code_MilestoneType_to_MilestoneIntent] 

ALTER TABLE [ods].[MilestoneType_to_MilestoneIntent] DROP CONSTRAINT [FK_MilestoneType_Code_MilestoneType_to_MilestoneIntent] 

ALTER TABLE [ods].[MLPrediction] DROP CONSTRAINT [FK_MLPrediction_EntityTypeCode] 

ALTER TABLE [ods].[MolecularTarget] DROP CONSTRAINT [FK_MolecularTargetFamily_MolecularTarget] 

ALTER TABLE [ods].[MolecularTarget] DROP CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTarget] 

ALTER TABLE [ods].[MolecularTargetFamilyUrlHistory] DROP CONSTRAINT [FK_MolecularTargetFamilyCode_MolecularTargetFamilyUrlHistory] 

ALTER TABLE [ods].[MolecularTargetUrlHistory] DROP CONSTRAINT [FK_MolecularTargetCode_MolecularTargetUrlHistory] 

ALTER TABLE [ods].[Pipeline] DROP CONSTRAINT [FK_Company_Code_Pipeline] 

ALTER TABLE [ods].[Pipeline] DROP CONSTRAINT [FK_IndicationDetailCode_Pipeline] 

ALTER TABLE [ods].[Pipeline] DROP CONSTRAINT [FK_PhaseOfDevelopmentCode_Pipeline] 

ALTER TABLE [ods].[Pipeline] DROP CONSTRAINT [FK_ProductCode_ODS] 

ALTER TABLE [ods].[Pipeline] DROP CONSTRAINT [FK_ProductDetailCode_Pipeline] 

ALTER TABLE [ods].[Pipeline] DROP CONSTRAINT [FK_RegulatoryDesignationRegionCode_Pipeline] 

ALTER TABLE [ods].[Pipeline] DROP CONSTRAINT [FK_RouteOfAdministrationCode_Pipeline] 

ALTER TABLE [ods].[PipelineDetail] DROP CONSTRAINT [FK_PhaseofDevelopment_Code_PipelineDetail] 

ALTER TABLE [ods].[PipelineDetail] DROP CONSTRAINT [FK_PipelineCode_PipelineDetail] 

ALTER TABLE [ods].[PipelineDetail] DROP CONSTRAINT [FK_RegulatoryDesignationRegionCode_PipelineDetail] 

ALTER TABLE [ods].[PipelineDetail] DROP CONSTRAINT [FK_RouteOfAdministration_Code_PipelineDetail] 

ALTER TABLE [ods].[PipelineMLPrediction] DROP CONSTRAINT [FK_PipelineMLPrediction_MLPredictionCode] 

ALTER TABLE [ods].[PipelineMLPrediction] DROP CONSTRAINT [FK_PipelineMLPrediction_PipelineRecordId]

ALTER TABLE [ods].[PipelineRegulatoryDetail] DROP CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail] 

ALTER TABLE [ods].[PipelineRegulatoryDetail] DROP CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail] 

ALTER TABLE [ods].[PipelineUrl] DROP CONSTRAINT [FK_Company_to_PipelineUrl] 

ALTER TABLE [ods].[PipelineUrl] DROP CONSTRAINT [FK_PipelineUrl_ValidatorId] 

ALTER TABLE [ods].[PipelineUrlHistory] DROP CONSTRAINT [FK_Company_to_PipelineUrlHistory] 

ALTER TABLE [ods].[PipelineUrlHistory] DROP CONSTRAINT [FK_PipelineUrlHistory_ValidatorId] 

ALTER TABLE [ods].[Product] DROP CONSTRAINT [FK_OriginatorCompany_Code_Product] 

ALTER TABLE [ods].[Product] DROP CONSTRAINT [FK_OwnerCompany_Code_Product] 

ALTER TABLE [ods].[Product] DROP CONSTRAINT [FK_PartnerCompany_Code_Product] 

ALTER TABLE [ods].[Product_to_MechanismOfAction] DROP CONSTRAINT [FK_MechanismOfAction_Product_to_MechanismOfAction] 

ALTER TABLE [ods].[Product_to_MechanismOfAction] DROP CONSTRAINT [FK_Product_Product_to_MechanismOfAction] 

ALTER TABLE [ods].[Product_to_MolecularTarget] DROP CONSTRAINT [FK_MolecularTarget_Product_to_MolecularTarget] 

ALTER TABLE [ods].[Product_to_MolecularTarget] DROP CONSTRAINT [FK_Product_Product_to_MolecularTarget] 

ALTER TABLE [ods].[Product_to_StandardIndication] DROP CONSTRAINT [FK_Product_Code_Product_to_StandardIndication] 

ALTER TABLE [ods].[Product_to_TherapeuticModality] DROP CONSTRAINT [FK_Product_Product_to_TherapeuticModality] 

ALTER TABLE [ods].[Product_to_TherapeuticModality] DROP CONSTRAINT [FK_TherapeuticModality_Product_to_TherapeuticModality] 

ALTER TABLE [ods].[ProductDetail] DROP CONSTRAINT [FK_StandardIndicationCode_ProductDetail] 

ALTER TABLE [ods].[ProductNames] DROP CONSTRAINT [FK_Product_Code] 

ALTER TABLE [ods].[ProductNames] DROP CONSTRAINT [FK_ProductNameType_Code] 

ALTER TABLE [ods].[ProductUrlHistory] DROP CONSTRAINT [FK_ProductCode_ProductUrlHistory] 

ALTER TABLE [ods].[RegulationRegionCountry] DROP CONSTRAINT [FK_CountryCode_RegulationRegionCountry] 

ALTER TABLE [ods].[RegulationRegionCountry] DROP CONSTRAINT [FK_RegulatoryDesignationRegionCode_RegulationRegionCountry] 

ALTER TABLE [ods].[RegulatoryDesignation] DROP CONSTRAINT [FK_PipelineCode_RegulatoryDesignation] 

ALTER TABLE [ods].[RegulatoryDesignation] DROP CONSTRAINT [FK_ProductDetail_Code_RegulatoryDesignation] 

ALTER TABLE [ods].[RegulatoryDesignation] DROP CONSTRAINT [FK_RegulatoryDesignationRegion_Code_RegulatoryDesignation] 

ALTER TABLE [ods].[RegulatoryDesignation] DROP CONSTRAINT [FK_RegulatoryDesignationRegionTypeCode_RegulatoryDesignation] 

ALTER TABLE [ods].[RegulatoryDesignation] DROP CONSTRAINT [FK_RegulatoryDesignationType_Code_RegulatoryDesignation] 

ALTER TABLE [ods].[StandardIndication] DROP CONSTRAINT [FK_DiseaseCategoryCode_StandardIndication] 

ALTER TABLE [ods].[StandardIndicationSynonym] DROP CONSTRAINT [FK_StandardIndicationCode_StandardIndicationSynonym] 

ALTER TABLE [ods].[StandardIndicationUrlHistory] DROP CONSTRAINT [FK_StandardIndicationCode_StandardIndicationUrlHistory] 

ALTER TABLE [ods].[State] DROP CONSTRAINT [FK_Country_Code_State] 

ALTER TABLE [ods].[StockFundamentals] DROP CONSTRAINT [FK_Company_Code_StockFundamentals] 

ALTER TABLE [ods].[StockFundamentals] DROP CONSTRAINT [FK_StockTicker_Code_StockFundamentals] 

ALTER TABLE [ods].[Stocks] DROP CONSTRAINT [FK_Company_Code_Stocks] 

ALTER TABLE [ods].[Stocks2] DROP CONSTRAINT [FK_Company_Code_Stocks2] 

ALTER TABLE [ods].[StockSplits] DROP CONSTRAINT [FK_StockTicker_Code_StockSplits] 

ALTER TABLE [ods].[StocksV32] DROP CONSTRAINT [FK_Company_Code_StocksV32] 

ALTER TABLE [ods].[StockTicker] DROP CONSTRAINT [FK_Company_Code_StockTicker] 

ALTER TABLE [ods].[StockTicker] DROP CONSTRAINT [FK_StockExchange_Code_StockTicker] 

ALTER TABLE [ods].[SubRegion] DROP CONSTRAINT [FK_Region_Code_SubRegion] 

ALTER TABLE [ods].[ValidatorProductComparison] DROP CONSTRAINT [FK_AgentCode_ValidatorProductComparison] 

ALTER TABLE [ods].[ValidatorProductComparison] DROP CONSTRAINT [FK_ProductCode_ValidatorProductComparison] 

