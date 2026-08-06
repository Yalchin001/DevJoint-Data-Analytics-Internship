# 📊 Week 3 — Power BI Dashboard

This week focused on building an interactive Sales Performance Dashboard in Power BI using multiple related datasets.

## 🎯 Key Objectives

* Import and prepare multiple CSV datasets
* Build a structured data model with fact and dimension tables
* Create DAX measures for sales performance analysis
* Use purpose-selected visualizations
* Add interactive Year and Category slicers
* Compare actual sales against targets and previous-year performance
* Build a clean, single-page dashboard

## 🔗 Data Model

`FactSales` was used as the main fact table and connected to Customer, Product, Employee, Geography, and Date dimensions using one-to-many relationships.

`FactSalesTarget` was integrated through Date and Category dimensions to support Actual vs Target analysis.

Order Date was used as the active sales date relationship, while Ship Date was retained as an inactive secondary date relationship.

![Data Model](screenshots/01-data-model.png)

## 🧮 DAX Measures

The analysis includes measures for:

* Total Sales
* Total Profit
* Sales Target
* Target Achievement %
* Previous Year Sales
* YoY Growth %

The complete formulas are available in `dax-measures.md`.

![DAX Measure](screenshots/04-dax-measure.png)

## 📈 Dashboard Visuals

Four different visualization types were selected based on the analytical purpose:

* Line Chart — Monthly Sales Trend
* Clustered Column Chart — Actual Sales vs Target by Category
* Donut Chart — Sales by Channel
* Treemap — Profit by Subcategory

![Dashboard Overview](screenshots/02-dashboard-overview.png)

## 🎛 Interactivity

Year and Category slicers allow users to dynamically filter the dashboard and analyze KPIs and visual results for specific periods and product categories.

![Interactive Filter](screenshots/03-interactive-filter.png)

## 🎯 KPI Summary

For 2024, the dashboard shows:

* Total Sales: 10.16M
* Sales Target: 10.67M
* Target Achievement: 95.21%
* Previous Year Sales: 10.02M
* YoY Growth: 1.39%

## 🛠 Tools

* Power BI Desktop
* Power Query
* DAX
* Data Modeling

## ✅ Outcome

The final dashboard combines data modeling, DAX calculations, KPI tracking, interactive filtering, and business-focused visualizations in a single report.
