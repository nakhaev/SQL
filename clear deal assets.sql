-- SELECT MAX(Code) FROM [BCIQ_ODS].[ods].[Company];

-- SELECT Count(*) FROM [BCIQ_ODS].[ods].[License] WHERE InLicenseCompany_Code > 40997

-- SELECT Count(Code) FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182;

-- SELECT Count(Code) FROM [BCIQ_ODS].[mdm].[DealEvent] WHERE Deal_Code > 423182;

-- SELECT Count(Code) FROM [BCIQ_ODS].[mdm].[DealDocuments] WHERE Deal_Code > 423182;

-- DELETE FROM [BCIQ_ODS].[mdm].[DealEvent] WHERE Deal_Code > 423182;

-- DELETE FROM [BCIQ_ODS].[mdm].[DealDocuments] WHERE Deal_Code > 423182;


-- DELETE FROM [BCIQ_ODS].[mdm].[Deal_to_CommercialPaymentStructure] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);
-- DELETE FROM [BCIQ_ODS].[mdm].[Deal_to_Geography] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);
-- DELETE FROM [BCIQ_ODS].[mdm].[Deal_to_MechanismOfAction] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);
-- DELETE FROM [BCIQ_ODS].[mdm].[Deal_to_MolecularTarget] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);
-- DELETE FROM [BCIQ_ODS].[mdm].[Deal_to_PartnershipScope] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);
-- DELETE FROM [BCIQ_ODS].[mdm].[Deal_to_Product] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);
-- DELETE FROM [BCIQ_ODS].[mdm].[Deal_to_StandardIndication] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);
-- DELETE FROM [BCIQ_ODS].[mdm].[Deal_to_TherapeuticModality] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);
-- DELETE FROM [BCIQ_ODS].[mdm].[DealAsset_to_Company] WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);

-- UPDATE [BCIQ_ODS].[mdm].[License] SET DealAsset_Code = null WHERE [DealAsset_Code] IN (SELECT Code FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182);

-- DELETE FROM [BCIQ_ODS].[mdm].[DealAssets] WHERE Deal_Code > 423182;


-- SELECT Code FROM [BCIQ_ODS].[ods].[Company] WHERE Name LIKE '%CHECKLY%'
-- 40989 --
-- 40990 --
-- 40991 --
-- 40993 --
-- 40994 --
-- 40995 --
-- 40996

DELETE FROM [BCIQ_ODS].[ods].[Company] WHERE Code = 40995