 -- Create table if not exist
  DROP TABLE [Computer_std].[dbo].[dim_payment_method]
  CREATE TABLE [Computer_std].[dbo].[dim_payment_method](
    [Payment_Method_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Payment_Method] [nvarchar](50) NOT NULL
   )
 
 --2 Insert data into table
   INSERT INTO [Computer_std].[dbo].[dim_payment_method] (Payment_Method)
   SELECT DISTINCT Payment_Method
   FROM [Computer_std].[dbo].[raw_pc_data]

 --3 Select all data from dim payment_method
   SELECT * FROM[Computer_std].[dbo].[dim_payment_method]