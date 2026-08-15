# Week 4 — Marketing Business Case Analysis

## Checkpoint 1 — Business Question and KPIs

### Business Question

How did marketing results change from July–December 2024 to the same period in 2025, and which channels or campaigns had the biggest effect on the results?

### Selected KPIs

I selected five KPIs for this analysis:

* **CPA:** Shows the average cost of one conversion.
* **ROAS:** Compares revenue with marketing spend.
* **Conversion Rate:** Shows how many sessions resulted in conversions.
* **Revenue:** Shows the income generated from marketing activities.
* **Sessions:** Shows the amount of website traffic.

I will use these KPIs to compare costs, revenue, traffic and conversions.

### Comparison Approach

I will compare the same months in 2024 and 2025. This helps me consider seasonal changes in November and December.

## Checkpoint 2 — SQL Analysis

### Data Preparation

The original file had three data sheets. I saved them as CSV files because I needed to use them as separate tables in SQLite. I formatted the date column as `yyyy-mm-dd` so I can filter and compare the data by year and month.

After the import, I checked the row counts. The `marketing_events` table has 5,888 rows, the `customers` table has 5,370 rows and the `campaigns` table has 8 rows. The original Excel file was kept unchanged.
