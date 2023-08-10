SET IDENTITY_INSERT [BCIQ_DW].[app].[Letter] ON;
INSERT INTO [BCIQ_DW].[app].[Letter] (
    [Id]
      ,[UserId]
      ,[Email]
      ,[Body]
      ,[Created]
      ,[Sent]
      ,[IsSent]
      ,[IsSkipped]
) (
    SELECT
    [Id]
      ,[UserId]
      ,[Email]
      ,[Body]
      ,[Created]
      ,[Sent]
      ,[IsSent]
      ,[IsSkipped]
      FROM [BCIQDS.WESTUS.CLOUDAPP.AZURE.COM,27777].[BCIQ_DW].[app].[Letter]
      WHERE [Created] > '2022-06-30'
);

SET IDENTITY_INSERT [BCIQ_DW].[app].[Letter] OFF;