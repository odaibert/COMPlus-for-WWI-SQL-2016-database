restore database db01 from disk='C:\sqlserver\WideWorldImporters-Full.bak'
with 
move 'WWI_Primary' to 'c:\sqlserver\WideWorldImporters.mdf', 
move 'WWI_UserData' to 'c:\sqlserver\WideWorldImporters_UserData.ndf', 
move 'WWI_Log' to 'c:\sqlserver\WideWorldImporters.ldf',
move 'WWI_InMemory_Data_1' to 'c:\sqlserver\WideWorldImporters_InMemory_Data_1'