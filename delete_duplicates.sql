-- Deal_to_CommercialPaymentStructure
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealCode, DealAsset_Code, DealAsset_Name, CommercialPaymentStructure_Code, CommercialPaymentStructure_Name, CommercialPmntNotes	
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_CommercialPaymentStructure
)

select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_CommercialPaymentStructure WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- Deal_to_Company
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, Deal_Code, Deal_Name, Company_Code, Company_Name, CompanyRole_Code, CompanyRole_Name, CompanyRank, CompanyHQCountryID, CompanyTypeID, Responsibilities, DatePrior, StockPricePrior, StockPricePriorUSD, StockValue, CashValue, SwapRate, SharesIssued, SharesOutstanding, SharesOutstandingDate, MarketValue, MarketValueDate, ExchangeRate, CurrencyID, OwnershipID, ExchangeID1, ExchangeID2, Ticker1, Ticker2, PctOwnership
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_Company
)

select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_Company WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- Deal_to_Geography
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealAsset_Code, DealAsset_Name, Country_Code, Country_Name, SubRegion_Code, SubRegion_Name, Region_Code, Region_Name
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_Geography
)

select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_Geography WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- Deal_to_MechanismOfAction
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealAsset_Code, DealAsset_Name, MechanismOfAction_Code, MechanismOfAction_Name, Rank
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_MechanismOfAction
)

select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_MechanismOfAction WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- Deal_to_MolecularTarget
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealAsset_Code, DealAsset_Name, MolecularTarget_Code, MolecularTarget_Name, Rank
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_MolecularTarget
)

select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_MolecularTarget WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- Deal_to_PartnershipScope
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealAsset_Code, DealAsset_Name, PartnershipScope_Code, PartnershipScope_Name
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_PartnershipScope
)

select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_PartnershipScope WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- Deal_to_Product
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealAsset_Code, DealAsset_Name, Product_Code, Product_Name, IsDiscontinued_Code, IsDiscontinued_Name, IncludeInAsset_Code, IncludeInAsset_Name, WasAtSigning_Code, WasAtSigning_Name
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_Product
)
select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_Product WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- Deal_to_StandardIndication
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealAsset_Code, DealAsset_Name, StandardIndication_Code, StandardIndication_Name, StandardIndicationRank
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_StandardIndication
)
select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_StandardIndication WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- Deal_to_TherapeuticModality
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealAsset_Code, DealAsset_Name, TherapeuticModality_Code, TherapeuticModality_Name, Rank
	ORDER BY Code DESC
	) AS RN	FROM ods.Deal_to_TherapeuticModality
)
select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.Deal_to_TherapeuticModality WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);


-- DealAsset_to_Company
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY DealAsset_Code, Company_Code, Company_Name, CompanyDealRole_Code, CompanyDealRole_Name, Responsibilities, CompanyRank
	ORDER BY Code DESC
	) AS RN	FROM ods.DealAsset_to_Company
)
select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.DealAsset_to_Company WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);

-- DealAsset_to_DiseaseCategory
WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY Name, DealAssetCode, DiseaseCategoryCode, LoggedInUser
	ORDER BY Code DESC
	) AS RN	FROM ods.DealAsset_to_DiseaseCategory
)
select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC;
-- DELETE FROM ods.DealAsset_to_DiseaseCategory WHERE Code IN (select Code FROM CTE WHERE RN<>1 ORDER BY Code DESC);