# Waste Management Analytics

## Project Overview

Waste Management Analytics is an end-to-end data analytics portfolio
project built to analyze waste collection, recycling, collection
performance, disposal methods, and disposal costs.

The project uses a cleaned dataset of 25,000 waste collection records
and demonstrates data cleaning, SQL analysis, and interactive Power BI
dashboard development.

## Business Objectives

-   Analyze total waste collected across different zones and waste
    types.
-   Understand collection performance and identify delayed or missed
    collections.
-   Compare waste disposal methods.
-   Analyze recyclable waste and recycling performance.
-   Monitor disposal costs and cost efficiency.
-   Identify trends in waste collection over time.
-   Build an interactive dashboard for business reporting.

## Dataset

**Records:** 25,000

**Main fields include:** - Record ID - Collection Date - Zone - Area -
Waste Type - Waste Collected (KG) - Recyclable Waste (KG) - Collection
Status - Collection Delay (Minutes) - Distance (KM) - Workers Count -
Disposal Method - Disposal Cost - Complaint Count - Recycling Rate (%) -
Cost per KG - Month - Year

## Tools & Technologies

-   **Microsoft Excel** --- Data cleaning and validation
-   **MySQL** --- Data storage and SQL analysis
-   **Power BI** --- Interactive dashboard and data visualization
-   **Python** --- Pandas, NumPy, and Matplotlib for analytics skills

## Project Workflow

### 1. Data Cleaning

The raw waste management data was cleaned and validated before analysis.

Key checks included: - Duplicate and data-quality checks - Missing-value
validation - Negative-value validation - Data type consistency -
Preparation of the final 25,000-record dataset

### 2. SQL Analysis

MySQL was used to perform business-focused analysis, including: - Total
waste collected - Average and maximum waste collected - Waste by zone -
Waste by waste type - Collection status analysis - Collection delay
analysis - Disposal method analysis - Disposal cost analysis - Recycling
performance - Complaint analysis - Monthly waste collection trends

The SQL queries are available in `sql/waste_analysis.sql`.

### 3. Power BI Dashboard

The final dashboard provides interactive analysis through: - KPI cards -
Waste type analysis - Zone analysis - Disposal method analysis - Waste
collection trend - Collection status analysis - Waste Type slicer - Zone
slicer - Collection Status slicer

## Key Dashboard Metrics

  KPI                              Value
  ------------------------- ------------
  Total Waste Collected         1.16M KG
  Total Records                      25K
  Average Waste Collected       46.21 KG
  Maximum Waste Collected      162.10 KG
  Total Recyclable Waste      303.18K KG
  Total Disposal Cost              2.92M

## Dashboard Preview

![Waste Management Analytics Dashboard](screenshots/dashboard.png)

## Project Structure

``` text
Waste-Management-Analytics/
│
├── data/
│   └── waste_management_cleaned.csv
│
├── sql/
│   └── waste_analysis.sql
│
├── powerbi/
│   └── Waste_Management_Analytics.pbix
│
├── screenshots/
│   └── dashboard.png
│
└── README.md
```

## Key Insights

-   Organic waste is the largest waste category in the dataset.
-   North zone has the highest total waste collected among the zones.
-   Completed collections account for the majority of collection
    records.
-   Composting and Recycling are major disposal methods in the analysis.
-   The dashboard allows users to interactively compare waste type,
    zone, and collection status.

## Skills Demonstrated

**Excel:** Data Cleaning, Data Validation

**SQL:** MySQL, Aggregations, GROUP BY, CASE, Views, Business Analysis

**Power BI:** Data Modeling, KPI Cards, Charts, Slicers, Interactive
Dashboard

**Python:** Pandas, NumPy, Matplotlib

## Files

-   `data/waste_management_cleaned.csv` --- Cleaned dataset
-   `sql/waste_analysis.sql` --- SQL analysis queries
-   `powerbi/Waste_Management_Analytics.pbix` --- Power BI dashboard
-   `screenshots/dashboard.png` --- Dashboard preview

## Conclusion

This project demonstrates an end-to-end data analytics workflow,
starting from data cleaning and validation, followed by SQL-based
business analysis and ending with an interactive Power BI dashboard.

It was designed as a portfolio project to demonstrate practical data
analyst skills using Excel, MySQL, and Power BI.
