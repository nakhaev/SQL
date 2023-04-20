-- ProductNames
SELECT * INTO [ods].[ProductNames_BU_4202023_nakhaiev] FROM [ods].[ProductNames];

delete from [ods].[ProductNames];

ALTER TABLE [ods].[ProductNames] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[ProductNames] ON;

INSERT INTO [BCIQ_ODS].[ods].[ProductNames] (
[Code]
      ,[Name]
      ,[Product_Code]
      ,[Product_Name]
      ,[IndInfoID]
      ,[ProductNameType_Code]
      ,[ProductNameType_Name]
      ,[LocationID]
      ,[InternalNotes]
      ,[ToPublish]
      ,[URLSearchBy]
      ,[OmitFromLinkify]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[Sort_Order]
) (
    SELECT 
[Code] + 100000
      ,[Name]
      ,[Product_Code]
      ,[Product_Name]
      ,[IndInfoID]
      ,[ProductNameType_Code]
      ,[ProductNameType_Name]
      ,[LocationID]
      ,[InternalNotes]
      ,[ToPublish]
      ,[URLSearchBy]
      ,[OmitFromLinkify]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[Sort_Order]
    FROM [BCIQ_ODS].[ods].[ProductNames_BU_4202023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[ProductNames] OFF;

ALTER TABLE [ods].[ProductNames] CHECK CONSTRAINT ALL;


-- HotTopic_to_Product
SELECT * INTO [ods].[HotTopic_to_Product_BU_4202023_nakhaiev] FROM [ods].[HotTopic_to_Product];

delete from [ods].[HotTopic_to_Product];

ALTER TABLE [ods].[HotTopic_to_Product] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[HotTopic_to_Product] ON;

INSERT INTO [BCIQ_ODS].[ods].[HotTopic_to_Product] (
[HotTopic_Code]
      ,[Product_Code]
      ,[Code]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[DateRemoved]
) (
    SELECT 
[HotTopic_Code]
      ,[Product_Code]
      ,[Code] + 100000
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[DateRemoved]
    FROM [BCIQ_ODS].[ods].[HotTopic_to_Product_BU_4202023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[HotTopic_to_Product] OFF;

ALTER TABLE [ods].[HotTopic_to_Product] CHECK CONSTRAINT ALL;


-- Product_to_TherapeuticModality
SELECT * INTO [ods].[Product_to_TherapeuticModality_BU_4202023_nakhaiev] FROM [ods].[Product_to_TherapeuticModality];

delete from [ods].[Product_to_TherapeuticModality];

ALTER TABLE [ods].[Product_to_TherapeuticModality] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Product_to_TherapeuticModality] ON;

INSERT INTO [BCIQ_ODS].[ods].[Product_to_TherapeuticModality] (
[Name]
      ,[Code]
      ,[Product_Code]
      ,[Product_Name]
      ,[ProductID]
      ,[TherapeuticModality_Code]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[TherapeuticModality_Name]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[Product_Code]
      ,[Product_Name]
      ,[ProductID]
      ,[TherapeuticModality_Code]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[TherapeuticModality_Name]
    FROM [BCIQ_ODS].[ods].[Product_to_TherapeuticModality_BU_4202023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Product_to_TherapeuticModality] OFF;

ALTER TABLE [ods].[Product_to_TherapeuticModality] CHECK CONSTRAINT ALL;


-- Product_to_StandardIndication
SELECT * INTO [ods].[Product_to_StandardIndication_BU_4202023_nakhaiev] FROM [ods].[Product_to_StandardIndication];

delete from [ods].[Product_to_StandardIndication];

ALTER TABLE [ods].[Product_to_StandardIndication] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Product_to_StandardIndication] ON;

INSERT INTO [BCIQ_ODS].[ods].[Product_to_StandardIndication] (
[Name]
      ,[Code]
      ,[Product_Code]
      ,[Product_Name]
      ,[ProductID]
      ,[StandardIndication_Code]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[StandardIndication_Name]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[Product_Code]
      ,[Product_Name]
      ,[ProductID]
      ,[StandardIndication_Code]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[StandardIndication_Name]
    FROM [BCIQ_ODS].[ods].[Product_to_StandardIndication_BU_4202023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Product_to_StandardIndication] OFF;

ALTER TABLE [ods].[Product_to_StandardIndication] CHECK CONSTRAINT ALL;


-- Product_to_MolecularTarget
SELECT * INTO [ods].[Product_to_MolecularTarget_BU_4202023_nakhaiev] FROM [ods].[Product_to_MolecularTarget];

delete from [ods].[Product_to_MolecularTarget];

ALTER TABLE [ods].[Product_to_MolecularTarget] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Product_to_MolecularTarget] ON;

INSERT INTO [BCIQ_ODS].[ods].[Product_to_MolecularTarget] (
[Name]
      ,[Code]
      ,[Product_Code]
      ,[Product_Name]
      ,[ProductID]
      ,[MolecularTarget_Code]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[moleculartarget_name]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[Product_Code]
      ,[Product_Name]
      ,[ProductID]
      ,[MolecularTarget_Code]
      ,[Rank]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[moleculartarget_name]
    FROM [BCIQ_ODS].[ods].[Product_to_MolecularTarget_BU_4202023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Product_to_MolecularTarget] OFF;

ALTER TABLE [ods].[Product_to_MolecularTarget] CHECK CONSTRAINT ALL;


-- Product_to_MechanismOfAction
SELECT * INTO [ods].[Product_to_MechanismOfAction_BU_4202023_nakhaiev] FROM [ods].[Product_to_MechanismOfAction];

delete from [ods].[Product_to_MechanismOfAction];

ALTER TABLE [ods].[Product_to_MechanismOfAction] NOCHECK CONSTRAINT ALL;

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Product_to_MechanismOfAction] ON;

INSERT INTO [BCIQ_ODS].[ods].[Product_to_MechanismOfAction] (
[Name]
      ,[Code]
      ,[Product_Code]
      ,[Product_Name]
      ,[ProductID]
      ,[MechanismOfAction_Name]
      ,[MechanismOfAction_Code]
      ,[MechanismOfActionID]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
    SELECT 
[Name]
      ,[Code] + 100000
      ,[Product_Code]
      ,[Product_Name]
      ,[ProductID]
      ,[MechanismOfAction_Name]
      ,[MechanismOfAction_Code]
      ,[MechanismOfActionID]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
    FROM [BCIQ_ODS].[ods].[Product_to_MechanismOfAction_BU_4202023_nakhaiev]
);

SET IDENTITY_INSERT [BCIQ_ODS].[ods].[Product_to_MechanismOfAction] OFF;

ALTER TABLE [ods].[Product_to_MechanismOfAction] CHECK CONSTRAINT ALL;