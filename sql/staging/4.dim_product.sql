 -- Create table if not exist
  DROP TABLE [Computer_std].[dbo].[dim_product]
  CREATE TABLE [Computer_std].[dbo].[dim_product](
    [Product_id] INT IDENTITY(1,1) PRIMARY KEY,
    [PC_Make] [nvarchar](250) NOT NULL,
    [PC_Model] [nvarchar](250) NOT NULL,
    [Storage_Type] [nvarchar](250) NOT NULL,
	[RAM] [nvarchar](250) NOT NULL,
	[Storage_Capacity] [nvarchar](250) NOT NULL
   );
 
 --2 Insert data into table
   INSERT INTO [Computer_std].[dbo].[dim_product] (PC_Make, PC_Model, Storage_Type, RAM, Storage_Capacity)
   SELECT DISTINCT PC_Make, PC_Model, Storage_Type, RAM, Storage_Capacity
   FROM [Computer_std].[dbo].[raw_pc_data]

 --3 Select all data from dim product
   SELECT * FROM[Computer_std].[dbo].[dim_product]