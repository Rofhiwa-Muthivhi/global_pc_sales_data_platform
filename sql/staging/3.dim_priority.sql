 -- Create table if not exist
  DROP TABLE [Computer_std].[dbo].[dim_priority]
  CREATE TABLE [Computer_std].[dbo].[dim_Priority](
    [Priority_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Priority] [nvarchar](250) NOT NULL
   )
 
 --2 Insert data into table
   INSERT INTO [Computer_std].[dbo].[dim_priority] (Priority)
   SELECT DISTINCT Priority
   FROM [Computer_std].[dbo].[raw_pc_data]

 --3 Select all data from dim priority
   SELECT * FROM[Computer_std].[dbo].[dim_priority]