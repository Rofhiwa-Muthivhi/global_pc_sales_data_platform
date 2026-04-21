 -- Create table if not exist
  DROP TABLE [Computer_std].[dbo].[dim_sales_person]
  CREATE TABLE [Computer_std].[dbo].[dim_sales_person](
    [Sales_person_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Sales_Person_Name] [nvarchar](250) NOT NULL,
    [Sales_Person_Department] [nvarchar](250) NOT NULL
   )
 
 --2 Insert data into table
   INSERT INTO [Computer_std].[dbo].[dim_sales_person] (Sales_Person_Name, Sales_Person_Department)
   SELECT DISTINCT Sales_Person_Name, Sales_Person_Department
   FROM [Computer_std].[dbo].[raw_pc_data]

 --3 Select all data from dim sales person
   SELECT * FROM[Computer_std].[dbo].[dim_sales_person]