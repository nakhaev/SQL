SET NOCOUNT ON
DECLARE @temp TABLE(
RowId INT PRIMARY KEY IDENTITY(1, 1),
TableName NVARCHAR(200),
ColumnName NVARCHAR(200),
SchemaName NVARCHAR(200)
);

INSERT INTO @temp(TableName, ColumnName, SchemaName)
SELECT
IT.TABLE_NAME,
IC.COLUMN_NAME,
IT.TABLE_SCHEMA
FROM
BCIQ_ODS.INFORMATION_SCHEMA.TABLES IT
INNER JOIN BCIQ_ODS.INFORMATION_SCHEMA.COLUMNS IC
ON IT.TABLE_NAME = IC.TABLE_NAME AND IT.TABLE_SCHEMA = IC.TABLE_SCHEMA
WHERE IT.TABLE_SCHEMA IN ('ods', 'mdm', 'dbo') 
AND IC.COLUMN_NAME IN ('Name', 'Description', 'Notes', 'Internal Notes', 'Synonym', 'SynonymName')
AND IC.DATA_TYPE IN ('varchar', 'nvarchar')
AND IT.TABLE_TYPE = 'BASE TABLE'

-- SELECT * FROM @temp

select DISTINCT(
'INSERT INTO @result (SchemaName, TableName, ColumnName, Exist) 
SELECT ''' + SchemaName + ''', ''' + TableName +  ''', ''' + ColumnName + 
''', (SELECT COUNT(*) FROM [BCIQ_ODS].[' + SchemaName + '].[' + TableName + '] WHERE [' + ColumnName + '] LIKE ' + '''%CHECKLY%''' + ' OR [' + ColumnName + '] LIKE ' + '''%BCIQTEST%''' + ');') 
FROM @temp