-- Deal_to_Product
ALTER TABLE [ods].[Deal_to_Product] NOCHECK CONSTRAINT ALL;

INSERT INTO [BCIQ_ODS].[ods].[Deal_to_Product] (
       [Name]
      ,[DealAsset_Code]
      ,[DealAsset_Name]
      ,[Product_Code]
      ,[Product_Name]
      ,[IsDiscontinued_Code]
      ,[IsDiscontinued_Name]
      ,[IncludeInAsset_Code]
      ,[IncludeInAsset_Name]
      ,[WasAtSigning_Code]
      ,[WasAtSigning_Name]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
) (
	SELECT 
       datp.[Name]
      ,odsda.[Code] as DealAsset_Code
      ,datp.[DealAsset_Name]
      ,datp.[Product_Code]
      ,datp.[Product_Name]
      ,2
      ,'No'
      ,1
      ,'Yes'
      ,1
      ,'Yes'
      ,datp.[CreatedUser]
      ,datp.[UpdatedUser]
      ,datp.[CreatedDateTime]
      ,datp.[UpdatedDateTime]
	  FROM [BCIQ_ODS].[api].[Deal_to_Product] datp
	  JOIN [BCIQ_ODS].[api].[DealAssets] da ON datp.DealAsset_Code = da.Code
	  JOIN [BCIQ_ODS].[ods].[Deals_Temp] dt ON dt.ApiCode = da.Deal_Code
	  JOIN [BCIQ_ODS].[ods].[DealAssets] odsda ON dt.odsCode = odsda.Deal_Code AND odsda.CreatedDateTime = da.CreatedDateTime
	  WHERE dt.Code != 9999
);

ALTER TABLE [ods].[Deal_to_Product] CHECK CONSTRAINT ALL;