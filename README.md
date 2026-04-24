🌍 World Layoffs Data Cleaning & Analysis Project
📌 Overview

This project focuses on cleaning and analyzing a real-world layoffs dataset using SQL. The goal is to transform raw, inconsistent data into a structured and analysis-ready format by applying industry-standard data cleaning techniques.

🎯 Objectives
Perform end-to-end data cleaning using SQL
Handle missing, inconsistent, and duplicate records
Standardize data formats for better usability
Prepare the dataset for exploratory data analysis (EDA)
🛠️ Tools & Technologies
SQL (MySQL)
Database Management Systems
Data Cleaning Techniques
🧹 Data Cleaning Process

The following steps were performed systematically:

1. Data Staging
Created staging tables to preserve raw data
Ensured safe transformations without affecting original dataset
2. Duplicate Removal
Identified duplicate records using ROW_NUMBER()
Removed redundant entries to maintain data integrity
3. Data Standardization
Cleaned inconsistent text values (e.g., company names, industries)
Unified formats across columns for consistency
4. Handling NULL & Missing Values
Replaced or managed NULL values appropriately
Ensured completeness for analysis
5. Date Format Conversion
Converted date columns into proper SQL date format
Enabled time-based analysis
📊 Exploratory Data Analysis (EDA)

After cleaning, SQL queries were used to derive insights such as:

Layoffs trends over time
Industry-wise impact
Country-wise layoffs distribution
Funding vs layoffs relationship
📈 Results & Insights
Successfully transformed raw data into a clean dataset
Improved data consistency and reliability
Enabled meaningful business insights through SQL queries
Created a strong foundation for further data analysis and visualization
📁 Project Structure
world-layoffs-data-cleaning/
│
├── data_cleaning.sql     # Data cleaning queries
├── analysis.sql          # Analysis & insights queries
├── dataset/
│   └── layoffs.csv       # Raw dataset
├── README.md             # Project documentation
🚀 How to Use
Import the dataset into your SQL database
Run data_cleaning.sql to clean the data
Execute analysis.sql to generate insights
👨‍💻 Author

Sachin Ganesh S
