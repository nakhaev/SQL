-- check HotTopic deleting
DECLARE @Code int;

SET @Code = 18;

SELECT * FROM dbo.HotTopic Where Code = @Code;
SELECT * FROM dbo.HotTopic_To_Product Where HotTopic_Code = @Code;
SELECT * FROM dbo.HotTopic_to_Company Where HotTopic_Code = @Code;
SELECT * FROM dbo.HotTopic_to_Indication Where HotTopic_Code = @Code;
SELECT * FROM dbo.HotTopic_to_Target Where HotTopic_Code = @Code;

-- check TherapeuticModality deleting
DECLARE @Code int;

SET @Code = 4522;

SELECT * FROM mdm.TherapeuticModality Where Code = @Code;
SELECT * FROM mdm.Deal_to_TherapeuticModality Where TherapeuticModality_Code = @Code;
SELECT * FROM mdm.Product_to_TherapeuticModality Where TherapeuticModality_Code = @Code;