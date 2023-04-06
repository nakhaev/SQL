ALTER TABLE [ods].[DocumentInfo] SET (SYSTEM_VERSIONING = OFF);
ALTER TABLE [ods].[DocumentInfo] DROP PERIOD FOR SYSTEM_TIME;
ALTER TABLE [ods].[DocumentInfo] DROP CONSTRAINT [DF_DocumentInfo_ValidFrom];
ALTER TABLE [ods].[DocumentInfo] DROP CONSTRAINT [DF_DocumentInfo_ValidTo];
ALTER TABLE [ods].[DocumentInfo] DROP COLUMN ValidFrom;
ALTER TABLE [ods].[DocumentInfo] DROP COLUMN ValidTo;
ALTER TABLE [ods].[DocumentInfo] ADD [ValidFrom] [datetime2](2) NOT NULL;
ALTER TABLE [ods].[DocumentInfo] ADD [ValidTo] [datetime2](2) NOT NULL;
ALTER TABLE [ods].[DocumentInfo] ADD PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
DROP TABLE  [ods].[DocumentInfo_History];
ALTER TABLE [ods].[DocumentInfo] SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[ods].[DocumentInfo_History]));
ALTER TABLE [ods].[DocumentInfo] ADD  CONSTRAINT [DF_DocumentInfo_ValidFrom]  DEFAULT (dateadd(second,(-1),sysutcdatetime())) FOR [ValidFrom]
ALTER TABLE [ods].[DocumentInfo] ADD  CONSTRAINT [DF_DocumentInfo_ValidTo]  DEFAULT ('9999.12.31 23:59:59.99') FOR [ValidTo]