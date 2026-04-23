CREATE PROCEDURE sp_create_dim_customer
  
AS
BEGIN
   DROP TABLE [Computer_std].[dbo].[dim_customer]
  CREATE TABLE [Computer_std].[dbo].[dim_customer](
    [Customer_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Customer_Name] [nvarchar](100) NOT NULL,
	[Customer_Surname] [nvarchar](100) NOT NULL,
	[Customer_Contact_Number] [nvarchar](100) NOT NULL,
	[Customer_Email_Address] [nvarchar](150) NOT NULL
   )
   INSERT INTO [Computer_std].[dbo].[dim_customer] (Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address)
   SELECT DISTINCT Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address
   FROM [Computer_std].[dbo].[raw_pc_data]
END;