SET IDENTITY_INSERT [BCIQ_DW].[app].[ApplicationSetting] ON;
INSERT INTO [BCIQ_DW].[app].[ApplicationSetting] (
    [Id]
    ,[Key]
    ,[Type]
    ,[Value]
) (
    SELECT
    [Id]
    ,[Key]
    ,[Type]
    ,[Value]
      FROM [BCIQDS.WESTUS.CLOUDAPP.AZURE.COM,27777].[BCIQ_DW].[app].[ApplicationSetting]
);

SET IDENTITY_INSERT [BCIQ_DW].[app].[ApplicationSetting] OFF;