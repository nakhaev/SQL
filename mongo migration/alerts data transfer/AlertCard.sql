SET IDENTITY_INSERT [BCIQ_DW].[app].[AlertCard] ON;
INSERT INTO [BCIQ_DW].[app].[AlertCard] (
    [Id]
    ,[UserId]
    ,[Channel]
    ,[Date]
    ,[Grid]
    ,[Profile]
    ,[SavedSearch]
    ,[Archive]
) (
    SELECT
    [Id]
    ,[UserId]
    ,[Channel]
    ,[Date]
    ,[Grid]
    ,[Profile]
    ,[SavedSearch]
    ,[Archive]
      FROM [BCIQDS.WESTUS.CLOUDAPP.AZURE.COM,27777].[BCIQ_DW].[app].[AlertCard]
      WHERE [Date] > '2022-06-30'
);

SET IDENTITY_INSERT [BCIQ_DW].[app].[AlertCard] OFF;