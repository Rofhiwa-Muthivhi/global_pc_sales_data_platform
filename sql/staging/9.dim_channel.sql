-- Create table if not exist
  DROP TABLE [Computer_std].[dbo].[dim_channel]
  CREATE TABLE [Computer_std].[dbo].[dim_channel](
    [Channel_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Channel] [nvarchar](150) NOT NULL
   )
 
 --2 Insert data into table
   INSERT INTO [Computer_std].[dbo].[dim_channel] (Channel)
   SELECT DISTINCT Channel
   FROM [Computer_std].[dbo].[raw_pc_data]

 --3 Select all data from dim channel
   SELECT * FROM[Computer_std].[dbo].[dim_channel]