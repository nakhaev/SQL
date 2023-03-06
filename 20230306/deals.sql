INSERT INTO [BCIQ_ODS].[ods].[Deals] (
       [Name]
      ,[DealID]
      ,[DateAnnounced]
      ,[DateCompleted]
      ,[DateTerminated]
      ,[DateStatus]
      ,[Status_Code]
      ,[Status_Name]
      ,[Exclusivity_Code]
      ,[Exclusivity_Name]
      ,[TerminationReason_Code]
      ,[TerminationReason_Name]
      ,[Headline]
      ,[InternalNotes]
      ,[DealValueNotes]
      ,[DealValue]
      ,[OptionExclusivityPayment]
      ,[OptionExercisePayment]
      ,[UpfrontCash]
      ,[UpfrontEquity]
      ,[RDFunding]
      ,[TotalMilestonePayments]
      ,[SalesBasedMilestonePayments]
      ,[NetSalesRoyalty]
      ,[NetSalesRoyalty_Min]
      ,[NetSalesRoyalty_Max]
      ,[ProfitSplit]
      ,[ProfitSplit_Min]
      ,[ProfitSplit_Max]
      ,[ManufacturingSupplyTransPrice]
      ,[UnitBasedReimbursement]
      ,[LoansAndOther]
      ,[OtherPmntNotes]
      ,[OptionNotes]
      ,[UpfrontPmntNotes]
      ,[RDFundingNotes]
      ,[MilestonePmntNotes]
      ,[CommercialPmntNotes]
      ,[StageAtTermination_Code]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[StageAtTermination_Name]
      ,[MinAnnouncedValue]
      ,[RDRegulatoryMilestonePayments]
      ,[MdmDealCode]
      ,[ValidFrom]
      ,[ValidTo]
      ,[ExchangeRate]
      ,[CurrencyCode]
      ,[ReadyForQa]
      ,[Posted]
) (
SELECT 
       [Name]
      ,[DealID]
      ,[DateAnnounced]
      ,[DateCompleted]
      ,[DateTerminated]
      ,[DateStatus]
      ,[Status_Code]
      ,[Status_Name]
      ,[Exclusivity_Code]
      ,[Exclusivity_Name]
      ,[TerminationReason_Code]
      ,[TerminationReason_Name]
      ,[Headline]
      ,[InternalNotes]
      ,[DealValueNotes]
      ,[DealValue]
      ,[OptionExclusivityPayment]
      ,[OptionExercisePayment]
      ,[UpfrontCash]
      ,[UpfrontEquity]
      ,[RDFunding]
      ,[TotalMilestonePayments]
      ,[SalesBasedMilestonePayments]
      ,[NetSalesRoyalty]
      ,[NetSalesRoyalty_Min]
      ,[NetSalesRoyalty_Max]
      ,[ProfitSplit]
      ,[ProfitSplit_Min]
      ,[ProfitSplit_Max]
      ,[ManufacturingSupplyTransPrice]
      ,[UnitBasedReimbursement]
      ,[LoansAndOther]
      ,[OtherPmntNotes]
      ,[OptionNotes]
      ,[UpfrontPmntNotes]
      ,[RDFundingNotes]
      ,[MilestonePmntNotes]
      ,[CommercialPmntNotes]
      ,[StageAtTermination_Code]
      ,[CreatedUser]
      ,[UpdatedUser]
      ,[CreatedDateTime]
      ,[UpdatedDateTime]
      ,[StageAtTermination_Name]
      ,[MinAnnouncedValue]
      ,[RDRegulatoryMilestonePayments]
      ,[MdmDealCode]
      ,[ValidFrom]
      ,[ValidTo]
      ,[ExchangeRate]
      ,[CurrencyCode]
      ,[ReadyForQa]
      ,0
  FROM [BCIQ_ODS].[ods].[Deals_Temp] WHERE Code NOT IN (SELECT Code FROM [BCIQ_ODS].[ods].[Deals])
)