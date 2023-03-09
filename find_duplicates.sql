WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY DealAsset_Code, Company_Code, Company_Name, CompanyDealRole_Code, CompanyDealRole_Name, Responsibilities, CompanyRank
	ORDER BY Code DESC
	) AS RN	FROM ods.DealAsset_to_Company
)

select * FROM CTE WHERE RN<>1 ORDER BY Code DESC;

WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER (
	PARTITION BY DealAsset_Code, Company_Code, Company_Name, CompanyDealRole_Code, CompanyDealRole_Name, Responsibilities, CompanyRank
	ORDER BY Code ASC
	) AS RN	FROM ods.DealAsset_to_Company
)

select * FROM CTE WHERE RN<>1 ORDER BY Code DESC