# 🌦️ Weather Data ETL Pipeline on Azure

This project demonstrates a complete **end-to-end (E2E) data engineering pipeline** built on Microsoft Azure. It automates the ingestion, transformation, storage, and analysis of **Sri Lankan weather data** (Galle & Nikaweratiya stations) using modern cloud-native tools.

## 🚀 Architecture Overview

**Tools Used**
- **Azure Data Factory (ADF)** – Orchestration & ingestion  
- **Azure Data Lake Storage Gen2** – Bronze/Silver/Gold storage  
- **Azure Databricks** – Data cleaning & transformations  
- **Azure Synapse Analytics** – Data warehousing + external tables  
- **Power BI** – BI reporting & dashboards  

**Flow Summary**  
GitHub (weather data) → ADF (HTTP ingestion) → Data Lake (Bronze) → Databricks (Silver) → Synapse (Gold) → Power BI (Reports)

## 🧱 Project Structure

### **Bronze Layer**
Raw CSV files ingested directly from GitHub using ADF’s HTTP connector.

### **Silver Layer**
Cleaned & standardized data generated via Databricks:
- Date normalization  
- Null/invalid value handling  
- Type casting  
- Data structuring  
Saved in **Parquet** format.

### **Gold Layer**
Synapse serverless SQL pools:
- External tables over Silver data  
- Views prepared for BI consumption  

Used for dashboards in Power BI.

## 🛠️ Key Steps Implemented

1. Created Azure resources (Resource Group, Storage, Data Factory, Databricks, Synapse).  
2. Configured **Data Lake with Hierarchical Namespace** (required for ADLS Gen2).  
3. Set up Linked Services in ADF (HTTP → GitHub, ADLS).  
4. Built dynamic ingestion pipeline using **Lookup → ForEach → Copy**.  
5. Created App Registration & Client Secret for secure Databricks access.  
6. Assigned RBAC roles for Data Lake access.  
7. Developed Databricks transformation notebooks for Silver layer.  
8. Built Gold layer using Synapse external tables.  
9. Connected Power BI to Synapse for reporting.

## 📊 Output & Deliverables

- Automated ingestion pipeline  
- Cleaned weather datasets in Parquet format  
- SQL-based analytical tables  
- Ready-to-use BI model for weather analysis  
- Modular, scalable, and production-ready architecture

**Read the full step-by-step walkthrough on Medium here.** 👇

https://medium.com/@chamilyahampath/building-an-end-to-end-weather-data-etl-pipeline-on-azure-step-by-step-guide-682d9e6848a0
