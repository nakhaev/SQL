ALTER TABLE [ods].[DealAssets] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[DealAsset_To_Company] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_StandardIndication] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_TherapeuticModality] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Geography] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_MechanismOfAction] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_MolecularTarget] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_PartnershipScope] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Product] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Company] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] NOCHECK CONSTRAINT ALL;
ALTER TABLE [ods].[License] NOCHECK CONSTRAINT ALL;

-- Deal_to_CommercialPaymentStructure
DELETE datcps FROM [BCIQ_ODS].[ods].[Deal_to_CommercialPaymentStructure] datcps
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON datcps.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- Deal_to_Company
DELETE dtc FROM [BCIQ_ODS].[ods].[Deal_to_Company] dtc
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = dtc.Deal_Code
WHERE dt.Code != 9999;

-- Deal_to_Geography
DELETE datg FROM [BCIQ_ODS].[ods].[Deal_to_Geography] datg
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON datg.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- Deal_to_MechanismOfAction
DELETE datmoa FROM [BCIQ_ODS].[ods].[Deal_to_MechanismOfAction] datmoa
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON datmoa.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- Deal_to_MolecularTarget
DELETE datmt FROM [BCIQ_ODS].[ods].[Deal_to_MolecularTarget] datmt
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON datmt.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- Deal_to_PartnershipScope
DELETE datps FROM [BCIQ_ODS].[ods].[Deal_to_PartnershipScope] datps
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON datps.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- Deal_to_Product
DELETE datp FROM [BCIQ_ODS].[ods].[Deal_to_Product] datp
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON datp.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- Deal_to_StandardIndication
DELETE adtsi FROM [BCIQ_ODS].[ods].[Deal_to_StandardIndication] adtsi
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON adtsi.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- Deal_to_TherapeuticModality
DELETE dattm FROM [BCIQ_ODS].[ods].[Deal_to_TherapeuticModality] dattm
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON dattm.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- DealAsset_To_Company

DELETE datc FROM [BCIQ_ODS].[ods].[DealAsset_To_Company] datc
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON datc.DealAsset_Code = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;


-- DealAsset_to_DiseaseCategory
DELETE datdc FROM [BCIQ_ODS].[ods].[DealAsset_to_DiseaseCategory] datdc
JOIN [BCIQ_ODS].[ods].[DealAssets] da ON datdc.DealAssetCode = da.Code
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
WHERE dt.Code != 9999;

-- DealAssets

DELETE da FROM [BCIQ_ODS].[ods].[DealAssets] da
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = da.Deal_Code
WHERE dt.Code != 9999;


-- DealDocuments
DELETE dd FROM [BCIQ_ODS].[ods].[DealDocuments] dd
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = dd.Deal_Code
WHERE dt.Code != 9999;

-- DealEvent
DELETE de FROM [BCIQ_ODS].[ods].[DealEvent] de
JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.odsCode = de.Deal_Code
WHERE dt.Code != 9999;

-- Deals
DELETE FROM ods.Deals WHERE Code IN (SELECT Code FROM ods.Deals_temp WHERE Code != 9999)

ALTER TABLE [ods].[DealAssets] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[DealAsset_To_Company] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_StandardIndication] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_TherapeuticModality] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Geography] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_MechanismOfAction] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_MolecularTarget] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_PartnershipScope] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Product] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[Deal_to_Company] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[DealAsset_to_DiseaseCategory] CHECK CONSTRAINT ALL;
ALTER TABLE [ods].[License] CHECK CONSTRAINT ALL;
