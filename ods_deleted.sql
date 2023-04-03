-- Company
ALTER TABLE [ods].[Company] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[Company] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Company] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[Company] ADD CONSTRAINT [DF__Ods__Company__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[Company] SET Deleted = 0 Where Deleted IS NULL

-- Product
ALTER TABLE [ods].[Product] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[Product] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Product] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[Product] ADD CONSTRAINT [DF__Ods__Product__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[Product] SET Deleted = 0 Where Deleted IS NULL

-- Pipeline
ALTER TABLE [ods].[Pipeline] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[Pipeline] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Pipeline] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[Pipeline] ADD CONSTRAINT [DF__Ods__Pipeline__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[Pipeline] SET Deleted = 0 Where Deleted IS NULL

-- IndicationDetail
ALTER TABLE [ods].[IndicationDetail] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[IndicationDetail] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[IndicationDetail] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[IndicationDetail] ADD CONSTRAINT [DF__Ods__IndicationDetail__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[IndicationDetail] SET Deleted = 0 Where Deleted IS NULL

-- Deals
ALTER TABLE [ods].[Deals] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[Deals] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Deals] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[Deals] ADD CONSTRAINT [DF__Ods__Deals__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[Deals] SET Deleted = 0 Where Deleted IS NULL

-- Financings
ALTER TABLE [ods].[Financings] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[Financings] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Financings] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[Financings] ADD CONSTRAINT [DF__Ods__Financings__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[Financings] SET Deleted = 0 Where Deleted IS NULL

-- StandardIndication
ALTER TABLE [ods].[StandardIndication] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[StandardIndication] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[StandardIndication] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[StandardIndication] ADD CONSTRAINT [DF__Ods__StandardIndication__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[StandardIndication] SET Deleted = 0 Where Deleted IS NULL

-- DiseaseCategory
ALTER TABLE [ods].[DiseaseCategory] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[DiseaseCategory] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[DiseaseCategory] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[DiseaseCategory] ADD CONSTRAINT [DF__Ods__DiseaseCategory__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[DiseaseCategory] SET Deleted = 0 Where Deleted IS NULL

-- MolecularTarget
ALTER TABLE [ods].[MolecularTarget] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[MolecularTarget] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[MolecularTarget] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[MolecularTarget] ADD CONSTRAINT [DF__Ods__MolecularTarget__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[MolecularTarget] SET Deleted = 0 Where Deleted IS NULL

-- MolecularTargetFamily
ALTER TABLE [ods].[MolecularTargetFamily] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[MolecularTargetFamily] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[MolecularTargetFamily] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[MolecularTargetFamily] ADD CONSTRAINT [DF__Ods__MolecularTargetFamily__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[MolecularTargetFamily] SET Deleted = 0 Where Deleted IS NULL

-- TherapeuticModality
ALTER TABLE [ods].[TherapeuticModality] DROP CONSTRAINT DF__Company__Deleted__1685AA88;
ALTER TABLE [ods].[TherapeuticModality] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[TherapeuticModality] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[TherapeuticModality] ADD CONSTRAINT [DF__Ods__TherapeuticModality__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[TherapeuticModality] SET Deleted = 0 Where Deleted IS NULL

-- HotTopic
ALTER TABLE [ods].[HotTopic] DROP CONSTRAINT DF__HotTopic__Delete__21F75D34;
ALTER TABLE [ods].[HotTopic] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[HotTopic] ADD [Deleted] [bit] NULL;
ALTER TABLE [ods].[HotTopic] ADD CONSTRAINT [DF__Ods__HotTopic__Deleted] DEFAULT ((0)) FOR Deleted;
UPDATE [ods].[HotTopic] SET Deleted = 0 Where Deleted IS NULL