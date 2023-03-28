-- Product
select * from mdm.Product where Code = 577470;
select * from dbo.HotTopic_to_Product where Product_Code = 577470;
select * from mdm.Product_to_MolecularTarget where Product_Code = 577470;
select * from mdm.Product_to_MechanismOfAction where Product_Code = 577470;
select * from mdm.Product_to_TherapeuticModality where Product_Code = 577470;
select * from mdm.ProductNames where Product_Code = 577470;

select * from ods.Product where Code = 577470;
select * from ods.HotTopic_to_Product where Product_Code = 577470;
select * from ods.Product_to_MolecularTarget where Product_Code = 577470;
select * from ods.Product_to_MechanismOfAction where Product_Code = 577470;
select * from ods.Product_to_TherapeuticModality where Product_Code = 577470;
select * from ods.ProductNames where Product_Code = 577470;

-- HotTopic
select * from dbo.HotTopic where Code = 28;
select * from dbo.HotTopic_to_Indication where HotTopic_Code = 28;
select * from dbo.HotTopic_to_Company where HotTopic_Code = 28;
select * from dbo.HotTopic_to_Product where HotTopic_Code = 28;
select * from dbo.HotTopic_to_Target where HotTopic_Code = 28;

select * from ods.HotTopic where Code = 28;
select * from ods.HotTopic_to_Indication where HotTopic_Code = 28;
select * from ods.HotTopic_to_Company where HotTopic_Code = 28;
select * from ods.HotTopic_to_Product where HotTopic_Code = 28;
select * from ods.HotTopic_to_Target where HotTopic_Code = 28;

-- TherapeuticModality
select * from mdm.TherapeuticModality where Code = 4530;
select * from ods.TherapeuticModality where Code = 4530;

-- MolecularTargetFamily
select * from mdm.MolecularTargetFamily where Code = 4643;
select * from ods.MolecularTargetFamily where Code = 4643;

-- MolecularTarget
select * from mdm.MolecularTarget where Code = 246390;
select * from dbo.HotTopic_to_Target where MolecularTarget_Code = 246390;

select * from ods.MolecularTarget where Code = 246390;
select * from ods.HotTopic_to_Target where MolecularTarget_Code = 246390;

-- DiseaseCategory
select * from mdm.DiseaseCategory where Code = 974;
select * from ods.DiseaseCategory where Code = 974;

-- StandardIndication
select * from mdm.StandardIndication where Code = 23537;
select * from dbo.HotTopic_to_Indication where StandardIndication_Code = 23537;
select * from mdm.StandardIndicationSynonym where StandardIndicationCode = 23537;

select * from ods.StandardIndication where Code = 23537;
select * from ods.HotTopic_to_Indication where StandardIndication_Code = 23537;
select * from ods.StandardIndicationSynonym where StandardIndicationCode = 23537;

