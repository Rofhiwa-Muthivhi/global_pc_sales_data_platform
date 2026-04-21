 --1 Create table if not exist
 DROP TABLE [Computer_std].[dbo].[dim_customer]
  CREATE TABLE [Computer_std].[dbo].[dim_customer](
    [Computer_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
   )
 
 --2 Insert data into table
   INSERT INTO [Computer_std].[dbo].[dim_customer] (Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address)
   SELECT Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address
   FROM [Computer_std].[dbo].[raw_pc_data]

 --3 Select all data from dim customer
   SELECT * FROM[Computer_std].[dbo].[dim_customer]