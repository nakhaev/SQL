SELECT TABLE_NAME
FROM BCIQ_ODS.INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA = 'ods'
ORDER BY TABLE_NAME