-- Cretae License Details in ods
ALTER TABLE [ods].[PipelineDetail] NOCHECK CONSTRAINT ALL;
GO
INSERT INTO [BCIQ_ODS].[ods].[PipelineDetail] (
       [PipelineCode]
      ,[PhaseOfDevelopment_Code]
      ,[RouteOfAdministration_Code]
      ,[RegulatoryDesignationRegionCode]
      ,[IsDiscontinued]
      ,[QAReady]
      ,[SearchReady]
      ,[Posted]
) (
    SELECT 
       p.Code as PipelineCode
      ,p.[PhaseOfDevelopment_Code]
      ,p.[RouteOfAdministration_Code]
      ,p.[RegulatoryDesignationRegionCode]
      ,0
      ,null
      ,null
      ,null
    FROM [BCIQ_ODS].[ods].[Pipeline] p
    WHERE Code NOT IN (
        SELECT PipelineCode FROM [BCIQ_ODS].[ods].[PipelineDetail]
    )
);
GO
ALTER TABLE [ods].[PipelineDetail] CHECK CONSTRAINT ALL;