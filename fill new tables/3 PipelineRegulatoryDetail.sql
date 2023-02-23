
-- Create PipelineRegulatoryDetail
ALTER TABLE [mdm].[PipelineRegulatoryDetail]  DROP CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail] DROP CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail_Mdm]
GO
DELETE FROM [BCIQ_ODS].[mdm].[PipelineRegulatoryDetail]
GO
INSERT INTO [BCIQ_ODS].[mdm].[PipelineRegulatoryDetail] (
     [RegulatoryDesignationCode]
    ,[PipelineCode]
)
SELECT 
    r.Code as RegulatoryDesignationCode, 
    p.Code as PipelineCode
FROM [BCIQ_ODS].[mdm].Pipeline p
LEFT JOIN  [BCIQ_ODS].[mdm].RegulatoryDesignation r
ON p.productdetail_code = r.ProductDetail_Code where r.Code is not null
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail_Mdm] FOREIGN KEY([PipelineCode])
REFERENCES [mdm].[Pipeline] ([Code])
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail_Mdm]
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail_Mdm] FOREIGN KEY([RegulatoryDesignationCode])
REFERENCES [mdm].[RegulatoryDesignation] ([Code])
GO
ALTER TABLE [mdm].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail_Mdm]

-- Copy PipelineRegulatoryDetail to ODS
ALTER TABLE [ods].[PipelineRegulatoryDetail] DROP CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail]
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail]  DROP CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail]
GO
DELETE FROM [BCIQ_ODS].[ods].[PipelineRegulatoryDetail];
GO
SET IDENTITY_INSERT [BCIQ_ODS].[ods].[PipelineRegulatoryDetail] ON;
GO
INSERT INTO [BCIQ_ODS].[ods].[PipelineRegulatoryDetail] (
       [Code]
      ,[RegulatoryDesignationCode]
      ,[PipelineCode]
) (
    SELECT 
       [Code]
      ,[RegulatoryDesignationCode]
      ,[PipelineCode]
    FROM [BCIQ_ODS].[mdm].[PipelineRegulatoryDetail]
);
SET IDENTITY_INSERT [BCIQ_ODS].[ods].[PipelineRegulatoryDetail] OFF;
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail] FOREIGN KEY([PipelineCode])
REFERENCES [ods].[Pipeline] ([Code])
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_PipelineCode_PipelineRegulatoryDetail]
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail] FOREIGN KEY([RegulatoryDesignationCode])
REFERENCES [ods].[RegulatoryDesignation] ([Code])
GO
ALTER TABLE [ods].[PipelineRegulatoryDetail] CHECK CONSTRAINT [FK_RegulatoryDesignationCode_PipelineRegulatoryDetail]

-- Set PipelineCode for RegulatoryDesignation
UPDATE A SET
    A.PipelineCode = B.PipelineCode
FROM
    [BCIQ_ODS].[ods].RegulatoryDesignation AS A
    LEFT JOIN [BCIQ_ODS].[ods].PipelineRegulatoryDetail AS B
        ON A.Code = B.RegulatoryDesignationCode
WHERE
    A.Code = B.RegulatoryDesignationCode

-- Set PipelineCode for Milestones
UPDATE A SET
    A.PipelineCode = B.Code
FROM
    [BCIQ_ODS].[ods].Milestone AS A
    LEFT JOIN [BCIQ_ODS].[ods].Pipeline AS B
        ON A.ProductDetail_Code = B.ProductDetail_Code
        AND A.Product_Code = B.Product_Code
WHERE A.ProductDetail_Code = B.ProductDetail_Code
AND A.Product_Code = B.Product_Code

-- Set PipelineCode for License
UPDATE A SET
    A.PipelineCode = B.Code
FROM
    [BCIQ_ODS].[ods].License AS A
    LEFT JOIN [BCIQ_ODS].[ods].Pipeline AS B
        ON A.ProductDetail_Code = B.ProductDetail_Code
        AND A.Product_Code = B.Product_Code
WHERE A.ProductDetail_Code = B.ProductDetail_Code
AND A.Product_Code = B.Product_Code