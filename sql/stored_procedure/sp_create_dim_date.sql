CREATE PROCEDURE sp_create_dim_date
AS
BEGIN
 CREATE TABLE [Computer_std].[dbo].[dim_date](
    [Date_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Purchase_date] DATE NOT NULL,
    [Ship_date] DATE NOT NULL
   )
    INSERT INTO [Computer_std].[dbo].[dim_date] (Purchase_date, Ship_date)
   SELECT DISTINCT Purchase_date, Ship_date
   FROM [Computer_std].[dbo].[raw_pc_data]
END;