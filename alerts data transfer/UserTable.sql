SET IDENTITY_INSERT [BCIQ_DW].[app].[UserTable] ON;
INSERT INTO [BCIQ_DW].[app].[UserTable] (
    [Id]
      ,[UserId]
      ,[Type]
      ,[Key]
      ,[Value]
) (
    SELECT
    [Id]
      ,[UserId]
      ,[Type]
      ,[Key]
      ,[Value]
      FROM [BCIQDS.WESTUS.CLOUDAPP.AZURE.COM,27777].[BCIQ_DW].[app].[UserTable]
);

SET IDENTITY_INSERT [BCIQ_DW].[app].[UserTable] OFF;