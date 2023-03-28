-- Company
ALTER TABLE [ods].[Company] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Company] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- Product
ALTER TABLE [ods].[Product] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Product] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- Pipeline
ALTER TABLE [ods].[Pipeline] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Pipeline] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- IndicationDetail
ALTER TABLE [ods].[IndicationDetail] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[IndicationDetail] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- Deals
ALTER TABLE [ods].[Deals] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Deals] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- Financings
ALTER TABLE [ods].[Financings] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[Financings] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- StandardIndication
ALTER TABLE [ods].[StandardIndication] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[StandardIndication] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- DiseaseCategory
ALTER TABLE [ods].[DiseaseCategory] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[DiseaseCategory] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- MolecularTarget
ALTER TABLE [ods].[MolecularTarget] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[MolecularTarget] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- MolecularTargetFamily
ALTER TABLE [ods].[MolecularTargetFamily] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[MolecularTargetFamily] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- TherapeuticModality
ALTER TABLE [ods].[TherapeuticModality] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[TherapeuticModality] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));

-- HotTopic
ALTER TABLE [ods].[HotTopic] DROP COLUMN IF EXISTS [Deleted];
ALTER TABLE [ods].[HotTopic] ADD [Deleted] [bit] NOT NULL DEFAULT ((0));
