ALTER TABLE [mdm].[Deals] SET (SYSTEM_VERSIONING = OFF);
ALTER TABLE [mdm].[Deals] DROP PERIOD FOR SYSTEM_TIME;
ALTER TABLE [mdm].[Deals] DROP CONSTRAINT [DF_Deals_ValidFrom];
ALTER TABLE [mdm].[Deals] DROP CONSTRAINT [DF_Deals_ValidTo];
ALTER TABLE [mdm].[Deals] DROP COLUMN ValidFrom;
ALTER TABLE [mdm].[Deals] DROP COLUMN ValidTo;
ALTER TABLE [mdm].[Deals] ADD [ValidFrom] [datetime2](2) NOT NULL;
ALTER TABLE [mdm].[Deals] ADD [ValidTo] [datetime2](2) NOT NULL;
ALTER TABLE [mdm].[Deals] ADD PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
DROP TABLE  [mdm].[Deals_History];
ALTER TABLE [mdm].[Deals] SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[mdm].[Deals_History]));
ALTER TABLE [mdm].[Deals] ADD  CONSTRAINT [DF_Deals_ValidFrom]  DEFAULT (dateadd(second,(-1),sysutcdatetime())) FOR [ValidFrom]
ALTER TABLE [mdm].[Deals] ADD  CONSTRAINT [DF_Deals_ValidTo]  DEFAULT ('9999.12.31 23:59:59.99') FOR [ValidTo]