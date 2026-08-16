CREATE DATABASE waste_management;
use waste_management;
show databases;
USE waste_management;

Create table waste_data (
	Record_ID VARCHAR(20),
    Collection_Date INT,
    Zone VARCHAR(20),
    Area Varchar(100),
    Waste_Type Varchar(30),
    Waste_Collected_KG Decimal(10,2),
    Recyclable_KG Decimal(10,2),
    Collection_Status VARCHAR(30),
    Collection_Delay_Min INT,
    Distance_KM DECIMAL(10,2),
	Workers_Count INT,
    Disposal_Method VARCHAR(30),
    Disposal_Cost DECIMAL(10,2),
    Complaint_Count INT
);

Desc waste_data;
USE waste_management;

SELECT COUNT(*) AS total_records
FROM waste_data;
USE waste_management;

SELECT SUM(Waste_Collected_KG) AS Total_Collected_KG FROM waste_data;
SELECT SUM(Recyclable_KG) AS Total_Recyclable_waste_KG from waste_data;
select round(sum(Recyclable_KG) /SUM(Waste_Collected_KG)*100, 2) AS Recycling_Rate_Percent From waste_data;
select Zone, SUM(Waste_Collected_KG) AS Total_Waste_KG
From waste_data
Group BY Zone
Order BY Total_Waste_KG DESC;

SELECT Waste_Type,
		SUM(Waste_Collected_KG) AS Total_Waste_KG From waste_data
Group by Waste_Type
Order by Total_Waste_KG Desc;  

SELECT Collection_Status,
COUNT(*) AS Total_Records,
SUM(Waste_Collected_KG) AS Total_Waste_KG From waste_data
Group by Collection_Status
Order BY Total_Records Desc;
      
SELECT
    TRIM(Collection_Status) AS Collection_Status,
    COUNT(*) AS Total_Records,
    SUM(Waste_Collected_KG) AS Total_Waste_KG
FROM waste_data
GROUP BY TRIM(Collection_Status)
ORDER BY Total_Records DESC;

SELECT
    ROUND(AVG(Collection_Delay_Min), 2) AS Average_Delay_Minutes
FROM waste_data;

SELECT
    Disposal_Method,
    COUNT(*) AS Total_Records,
    ROUND(SUM(Disposal_Cost), 2) AS Total_Disposal_Cost
FROM waste_data
GROUP BY Disposal_Method
ORDER BY Total_Disposal_Cost DESC;

SELECT
    Disposal_Method,
    COUNT(*) AS Total_Records,
    ROUND(AVG(Disposal_Cost), 2) AS Average_Disposal_Cost
FROM waste_data
GROUP BY Disposal_Method
ORDER BY Average_Disposal_Cost DESC;

SELECT
    Zone,
    SUM(Complaint_Count) AS Total_Complaints,
    ROUND(AVG(Complaint_Count), 2) AS Avg_Complaints_Per_Record
FROM waste_data
GROUP BY Zone
ORDER BY Total_Complaints DESC;

SELECT
    TRIM(Collection_Status) AS Collection_Status,
    COUNT(*) AS Total_Records,
    SUM(Complaint_Count) AS Total_Complaints,
    ROUND(AVG(Complaint_Count), 2) AS Avg_Complaints_Per_Record
FROM waste_data
GROUP BY TRIM(Collection_Status)
ORDER BY Avg_Complaints_Per_Record DESC;

SELECT
    Zone,
    SUM(Waste_Collected_KG) AS Total_Waste_KG,
    ROUND(AVG(Collection_Delay_Min), 2) AS Avg_Delay_Min,
    SUM(Complaint_Count) AS Total_Complaints
FROM waste_data
GROUP BY Zone
ORDER BY Total_Complaints DESC;

USE waste_management;

CREATE OR REPLACE VIEW waste_analysis AS
SELECT
    Record_ID,
    Collection_Date,
    Zone,
    Area,
    Waste_Type,
    Waste_Collected_KG,
    Recyclable_KG,
    TRIM(Collection_Status) AS Collection_Status,
    Collection_Delay_Min,
    Distance_KM,
    Workers_Count,
    Disposal_Method,
    Disposal_Cost,
    Complaint_Count
FROM waste_data;
SELECT *
FROM waste_analysis
LIMIT 10;

SELECT COUNT(*) AS Total_Records
FROM waste_analysis;
use waste_management;
select * from waste_data;


