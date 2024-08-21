# IOWA Liquor Sales Analysis

## Project Overview

The IOWA Liquor Sales project involves analyzing liquor sales data from Iowa. This project includes data profiling, data staging, dimensional modeling, and the creation of business intelligence dashboards using Power BI and Tableau. The goal is to provide actionable insights and answer business questions through well-designed dashboards.

## Project Components

### 1. Data Profiling

**Objective**: Understand the quality, structure, and characteristics of the liquor sales data to identify any issues or anomalies.

**Procedure**:
- Use [Alteryx](https://www.alteryx.com/) to perform data profiling on the liquor sales data.
- Analyze data completeness, consistency, and identify any missing or erroneous values.
- Document findings and prepare a report summarizing data quality issues.

### 2. Data Staging

**Objective**: Load the raw data into staging tables to prepare it for transformation and integration.

**Procedure**:
- **Staging Databases**:
  - **Staging DBMS 1**: Use [Alteryx](https://www.alteryx.com/) to load data.
  - **Staging DBMS 2**: Use [Talend](https://www.talend.com/) to load data.
- Follow the [Staging Guidelines](docs/staging_guidelines.md) to ensure data is loaded correctly and consistently.

### 3. Dimensional Modeling

**Objective**: Design a dimensional data model to organize data for efficient querying and reporting.

**Procedure**:
- Identify key dimensions (e.g., product, store, time) and facts (e.g., sales amount, quantity sold).
- Develop the Dimensional Data Model using appropriate modeling tools.
- Document the model design, including tables, relationships, and indexing strategies.

### 4. Data Cleaning

**Objective**: Prepare the data for integration by identifying and addressing any data quality issues.

**Procedure**:
- **Identify Data Cleaning Tasks**:
  - Missing or incomplete values
  - Inconsistent data formats
  - Outliers or anomalies
- **Data Cleaning Plan**:
  - Develop a plan to address each identified issue, including specific cleaning methods and tools.
  - Use Alteryx and Talend to execute the data cleaning tasks as per the plan.

### 5. Load Integration Schema

**Objective**: Load the cleaned data into the integration schema based on the dimensional model.

**Procedure**:
- Use [Alteryx](https://www.alteryx.com/) to develop ETL workflows for loading data into the integration schema.
- Ensure that data transformations align with the dimensional model and that data integrity is maintained.

### 6. Query Integration Schema

**Objective**: Query the integration schema to answer key business questions.

**Procedure**:
- Develop SQL queries or use BI tools to extract insights from the integration schema.
- Answer specific business questions related to liquor sales, such as sales trends, top-performing products, and regional performance.

### 7. Business Intelligence Dashboards

**Objective**: Create interactive dashboards to visualize data and provide actionable insights.

**Procedure**:
- **Power BI**:
  - Use [Power BI Desktop](https://powerbi.microsoft.com/desktop/) to design and build dashboards.
  - Publish the dashboards to [Power BI Service](https://app.powerbi.com/) for sharing and collaboration.
- **Tableau**:
  - Use [Tableau Desktop](https://www.tableau.com/products/desktop) to create visualizations.
  - Publish the dashboards to [Tableau Online](https://www.tableau.com/products/tableau-online) for access and sharing.

## Setup Instructions

### Prerequisites

- **Alteryx Designer**: Required for data profiling and ETL workflows.
- **Talend**: Required for loading data into the second staging DBMS.
- **Power BI Desktop**: Required for creating and publishing Power BI reports.
- **Tableau Desktop**: Required for creating and publishing Tableau dashboards.
- **Database**: Set up your database environment for staging and integration schema.

### Steps

1. **Install Required Tools**:
   - Download and install Alteryx Designer, Talend, Power BI Desktop, and Tableau Desktop from their respective websites.

2. **Configure Databases**:
   - Set up staging databases and create staging tables according to the [Staging Guidelines](docs/staging_guidelines.md).

3. **Perform Data Profiling**:
   - Use Alteryx to perform data profiling and document the findings.

4. **Load Data into Staging**:
   - Use Alteryx to load data into the first staging DBMS.
   - Use Talend to load data into the second staging DBMS.

5. **Develop Dimensional Model**:
   - Design the dimensional model and document the schema.

6. **Data Cleaning**:
   - Identify and address data quality issues using Alteryx and Talend.

7. **Load Data into Integration Schema**:
   - Use Alteryx to load cleaned data into the integration schema.

8. **Query Data**:
   - Write and execute queries to answer business questions.

9. **Create and Publish Dashboards**:
   - Develop dashboards in Power BI and Tableau, and publish them to the respective services.

## Documentation

- [Staging Guidelines](docs/staging_guidelines.md): Guidelines for staging data.
- [Dimensional Model Design](docs/dimensional_model_design.md): Details of the dimensional data model.
- [Data Cleaning Plan](docs/data_cleaning_plan.md): Plan and procedures for cleaning data.
- [ETL Workflows](docs/etl_workflows.md): Instructions for using Alteryx and Talend workflows.
- [Power BI Dashboards](docs/powerbi_dashboards.md): Guide to creating and publishing Power BI dashboards.
- [Tableau Dashboards](docs/tableau_dashboards.md): Guide to creating and publishing Tableau dashboards.



## License

This project is licensed under the MIT License. 
