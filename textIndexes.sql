
-- Checking if a cat./ix exists
SELECT * FROM sys.fulltext_catalogs
SELECT * FROM sys.fulltext_indexes
-- 1) If catalogue is missing, rebuild catalogue
USE CurrentDatabaseName --BCIQ_ODS --BCIQ_DW
GO
CREATE FULLTEXT CATALOG FT_IX_ODS AS DEFAULT;
-- 2)
CREATE UNIQUE INDEX UI_DE_Column_Name ON [Schema_Name].[Table_Name]([Column_Name]);
-- 3)
CREATE FULLTEXT INDEX ON [Schema_Name].[Table_Name]([Search_Column_Name])) -- this is NOT the unique index column name
   KEY INDEX UI_DE_Column_Name -- name of the unique index from 2)   
   WITH STOPLIST = OFF;  
GO
-- 4)
ALTER FULLTEXT INDEX ON [Schema_Name].[Table_Name] START UPDATE POPULATION;
-- 5)
ALTER FULLTEXT INDEX ON [Schema_Name].[Table_Name] SET CHANGE_TRACKING AUTO;  
GO 