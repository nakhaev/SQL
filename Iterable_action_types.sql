SET IDENTITY_INSERT [IterableED].[dbo].[ActionType] ON;
INSERT INTO [IterableED].[dbo].[ActionType]( [Code], [ActionTypeName]) 
VALUES 
(1, 'Bounce'),
(2, 'Click'),
(3, 'Open'),
(4, 'Send'),
(5, 'Unsubscribe')
SET IDENTITY_INSERT [IterableED].[dbo].[ActionType] OFF;