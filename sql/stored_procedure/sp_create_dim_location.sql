CREATE PROCEDURE sp_create_dim_location
AS
BEGIN
    CREATE TABLE [Computer_std].[dbo].[dim_location](
    [Location_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Continent] [nvarchar](100) NOT NULL,
	[Country_or_State] [nvarchar](100) NOT NULL,
	[Province_or_City] [nvarchar](150) NOT NULL
   )
   INSERT INTO [Computer_std].[dbo].[dim_location] (Continent, Country_or_State, Province_or_City)
   SELECT DISTINCT Continent, Country_or_State, Province_or_City
   FROM [Computer_std].[dbo].[raw_pc_data]
END;