CREATE PROCEDURE sp_create_dim_store 
AS
BEGIN
   CREATE TABLE [Computer_std].[dbo].[dim_store](
    [Store_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Shop_Name] [nvarchar](150) NOT NULL,
    [Shop_Age] INT NOT NULL
   )
   INSERT INTO [Computer_std].[dbo].[dim_store] (Shop_Name, Shop_Age)
   SELECT DISTINCT Shop_Name, Shop_Age
   FROM [Computer_std].[dbo].[raw_pc_data]
END;