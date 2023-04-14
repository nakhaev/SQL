-- update mdm milestones from ods
UPDATE A SET A.PipelineCode = B.PipelineCode
FROM [BCIQ_ODS].[mdm].Milestone AS A
LEFT JOIN [BCIQ_ODS].[ods].Milestone AS B ON A.Code = B.Code