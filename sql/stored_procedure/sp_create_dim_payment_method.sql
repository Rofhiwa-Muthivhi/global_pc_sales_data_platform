CREATE PROCEDURE sp_create_dim_payment_method 
AS
BEGIN
  CREATE TABLE [Computer_std].[dbo].[dim_payment_method](
    [Payment_Method_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Payment_Method] [nvarchar](50) NOT NULL
   )
   INSERT INTO [Computer_std].[dbo].[dim_payment_method] (Payment_Method)
   SELECT DISTINCT Payment_Method
   FROM [Computer_std].[dbo].[raw_pc_data]
END;