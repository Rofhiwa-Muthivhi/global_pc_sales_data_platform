CREATE PROCEDURE sp_create_dim_channel 
AS
BEGIN
    CREATE TABLE [Computer_std].[dbo].[dim_channel](
    [Channel_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Channel] [nvarchar](150) NOT NULL
   )
   INSERT INTO [Computer_std].[dbo].[dim_channel] (Channel)
   SELECT DISTINCT Channel
   FROM [Computer_std].[dbo].[raw_pc_data]
END;