SET IDENTITY_INSERT [BCIQ_DW].[app].[Cache] ON;
INSERT INTO [BCIQ_DW].[app].[Cache] (
    [Id]
      ,[ItemId]
      ,[Data]
      ,[UpdatedAt]
      ,[Status]
      ,[Error]
) (
    SELECT
    [Id]
      ,[ItemId]
      ,[Data]
      ,[UpdatedAt]
      ,[Status]
      ,[Error]
      FROM [BCIQDS.WESTUS.CLOUDAPP.AZURE.COM,27777].[BCIQ_DW].[app].[Cache]
);

SET IDENTITY_INSERT [BCIQ_DW].[app].[Cache] OFF;