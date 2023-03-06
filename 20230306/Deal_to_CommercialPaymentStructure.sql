-- Deal_to_CommercialPaymentStructure
ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_CommercialPaymentStructure] (
       [Name]
      ,[DealCode]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[CommercialPaymentStructure_Code]
      ,[CommercialPaymentStructure_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[CommercialPmntNotes]
) (
	SELECT 
       datcps.[Name]
      ,dt.[odsCode] as DealCode
      ,odsda.[Code] as DealAsset_Code
      ,datcps.[DealAsset_Name]
      ,datcps.[CommercialPaymentStructure_Code]
      ,datcps.[CommercialPaymentStructure_Name]
      ,datcps.[CreatedUser]
      ,datcps.[UpdatedUser]
      ,datcps.[CreatedDateTime]
      ,datcps.[UpdatedDateTime]
      ,null
	  FROM [BCIQ_ODS].[api].[Deal_to_CommercialPaymentStructure] datcps
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON datcps.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code = 9999
);

ALTER TABLE [ods].[Deal_to_CommercialPaymentStructure] CHECK CONSTRAINT ALL;