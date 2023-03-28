ALTER TABLE [ods].[Financing_to_Financier] NOCHECK CONSTRAINT ALL;
INSERT INTO [BCIQ_ODS].[ods].[Financing_to_Financier] (
      [Name]
      ,[Financing_Code]
      ,[Financing_Name]
      ,[Company_Code]
      ,[Company_Name]
      ,[Rank]
      ,[Role_Code]
      ,[Role_Name]
      ,[FinancingID]
      ,[InvestorID]
      ,[UnderwriterID]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[Source]
) (
    SELECT  
       ff.[Name]
      ,f.odsCode as Financing_Code
      ,ff.[Financing_Name]
      ,ff.[Company_Code]
      ,ff.[Company_Name]
      ,ff.[Rank]
      ,ff.[Role_Code]
      ,ff.[Role_Name]
      ,ff.[FinancingID]
      ,ff.[InvestorID]
      ,ff.[UnderwriterID]
      ,ff.[CreatedUser]
      ,ff.[UpdatedUser]
      ,ff.[CreatedDateTime]
      ,ff.[UpdatedDateTime]
      ,ff.[Source]
    FROM [BCIQ_ODS].[api].[Financing_to_Financier] ff
    JOIN [BCIQ_ODS].[api].[Financings_Temp] f ON ff.Financing_Code = f.apiCode
    WHERE f.Code != 9999
)

ALTER TABLE [ods].[Financing_to_Financier] CHECK CONSTRAINT ALL;