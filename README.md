# Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀  
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.

---
## 🏗️ Data Architecture

The data architecture for this project follows Kimbal Architecture **Staging**, **Star Schema**, and **Analytics** layers:
![Data Architecture](D:\github_copy\epsion_project\epsion_analytics\docs\etl diagram.svg)


| Layer Name                   | dbt Folder                          | Role Equivalent        | Description                                                      |
| ---------------------------- | ----------------------------------- | ---------------------- | ---------------------------------------------------------------- |
| **Staging**                  | `staging/`                          | Operational staging    | Cleansed raw data, ready for modeling                            |
| **Star Schema**              | `marts/` → `facts/` & `dimensions/` | Dimensional modeling   | Star schema with dim/fact tables for scalable analytics          |
| **Analytics**                | `analytics/`                        | Semantic/serving layer | Business-specific queries to power dashboards and ad hoc reports |


---
## 📖 Project Overview

This project involves:

1. **Data Architecture**: Designing a Modern Data Warehouse Using Kimball Architecture **Staging**, **Star Schema**, and **Analytics** layers.
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights.


## 🚀 Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Sources**: Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
- **Integration**: Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historization of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

---

### BI: Analytics & Reporting (Data Analysis)

#### Objective
Develop SQL-based analytics to deliver detailed insights into:
- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

### Key Requiremnets 
- **KPI Overview**
Display a summary of total revenue, profit, orders, and returns for the current month and the same month in previous years


These insights empower stakeholders with key business metrics, enabling strategic decision-making.  

