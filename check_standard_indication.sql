DECLARE @ProductDetailCode int;
DECLARE @IndicationDetailCode int;

SELECT @ProductDetailCode = p.ProductDetail_Code, @IndicationDetailCode = p.IndicationDetailCode FROM [BCIQ_ODS].[ods].[Pipeline] p WHERE Code = 1172533;

SELECT Code, Name, StandardIndication_Code, StandardIndication_Name FROM [BCIQ_ODS].[ods].[ProductDetail] WHERE Code = @ProductDetailCode;

SELECT id.Code, id.Name, id.StandardIndicationCode, si.Name as StandardIndicationName FROM [BCIQ_ODS].[ods].[IndicationDetail] id
JOIN [BCIQ_ODS].[ods].[StandardIndication] si ON si.Code = id.StandardIndicationCode WHERE id.Code = @IndicationDetailCode;

SELECT Code, Name, StandardIndication_Code, StandardIndication_Name FROM [BCIQ_ODS].[mdm].[ProductDetail] WHERE Code = @ProductDetailCode;

SELECT id.Code, id.Name, id.StandardIndicationCode, si.Name as StandardIndicationName FROM [BCIQ_ODS].[mdm].[IndicationDetail] id
JOIN [BCIQ_ODS].[mdm].[StandardIndication] si ON si.Code = id.StandardIndicationCode WHERE id.Code = @IndicationDetailCode;