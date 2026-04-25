 -- Create table if not exist
  DROP TABLE [Computer_std].[dbo].[dim_date]
  CREATE TABLE [Computer_std].[dbo].[dim_date](
    [Date_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Full_date] DATE NOT NULL,
    [Year] INT,
    [Month] INT,
    [Month_name] [nvarchar](50),
    [Weekday_name] [nvarchar](50)
   )
 
 --2 Insert data into table
 /* Full_date
    It combines purchase_date and ship_date because we all use the same date logic,
    so it means we have broken down the two columns to work under one. This insert
    block of code gives an error because we still have to clean our dataset and handle "NULLS" */
-- More to be unpacked regarding the dim_date
   INSERT INTO [Computer_std].[dbo].[dim_date] (Full_date, Year, Month, Month_name, Weekday_name)
   SELECT DISTINCT Combined_dates.Full_date,
                   Year(Combined_dates.Full_date) AS Year,
                   Month(Combined_dates.Full_date) AS Month,
                   DATENAME(Month,Combined_dates.Full_date) AS Month_name,
                   DATENAME(Weekday,Combined_dates.Full_date) AS Weekday_name
   FROM 
   ( SELECT Purchase_date AS Full_date
     FROM [Computer_std].[dbo].[raw_pc_data]
-- Union removes duplicates but in this case we have not yet cleaned the data
     UNION

     SELECT Ship_date AS Full_date
     FROM [Computer_std].[dbo].[raw_pc_data]
   ) AS Combined_dates

 --3 Select all data from dim date
 -- This will perform testing
   SELECT * FROM[Computer_std].[dbo].[dim_date] 