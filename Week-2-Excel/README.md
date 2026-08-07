# Week 2 — Excel Data Analysis

During Week 2 of my DevJoint Data Analytics Internship, I worked with the Superstore sales dataset in Microsoft Excel.

I started by cleaning and checking the provided worksheets, then used lookup and logical formulas to add new information to the Orders data. After that, I used PivotTables to analyze sales and profit performance and built an interactive dashboard to summarize the main results.

📥 [Download the completed Excel workbook](./superstore-sales-analysis.xlsx)

---

## 1. Data Cleaning and Preparation

I first reviewed the `Orders`, `People`, `Products`, and `Returns` worksheets before starting the analysis.

For blank rows, I used `ISBLANK` and filtered the result by `FALSE` to keep populated records. I then copied only the visible cells to a clean worksheet.

I also checked the data types. Some date values in `Order Date` were stored incorrectly, so I converted them using `Text to Columns`. To make sure the conversion worked, I tested the values with `ISTEXT`. The result was `FALSE`, confirming that the dates were no longer stored as text.

The `Target Margin` column in the `Products` worksheet had a similar issue. I checked it with `ISNUMBER`, converted the values to numbers, and then applied percentage formatting.

I also reviewed repeated values in the dataset. These belonged to different orders and were not complete duplicate rows, so I kept them to avoid losing valid data.

![Checkpoint 1 — Data Cleaning](screenshots/checkpoint-01-data-cleaning.jpeg)

---

## 2. Lookup Formulas

After preparing the data, I used three lookup methods to bring additional information into the `Orders` worksheet.

- `XLOOKUP` — matched each region with its Regional Manager.
- `VLOOKUP` — matched Product IDs with Supplier information.
- `INDEX` + `MATCH` — returned the Target Margin for each Product ID.

This added the `Regional Manager`, `Supplier`, and `Target Margin` fields to the main dataset.

---

## 3. Calculated Fields

I created several additional fields to practice working with aggregation and logical formulas.

- `SUMIFS` — calculated sales using multiple conditions.
- `COUNTIFS` — counted records that matched selected conditions.
- `IF` — classified sales as `Yüksək Satış` or `Aşağı Satış`.
- Nested `IF` — grouped records as `VIP`, `Special`, `Formal`, or `Normal`.
- `IFS` — evaluated discount and product quantity conditions.
- `ROUND` — limited adjusted discount values to two decimal places.

These calculations were kept in the `Hesablanan Sahələr(IF,IFS və s)` worksheet.

---

## 4. PivotTable Analysis

I used PivotTables to compare sales, profit, orders, and yearly performance from different perspectives.

Some of the main results were:

### Sales

- Technology had the highest category sales: **842,456.96**
- New York City had the highest city-level sales: **256,368.16**
- West was the highest-performing region by sales: **739,879.80**
- Consumer was the highest-performing segment: **1,174,198.71**
- Canon imageCLASS 2200 Advanced Copier had the highest product sales: **61,599.82**

### Profit

- Technology had the highest category profit: **147,310.81**
- New York City had the highest city-level profit: **62,036.98**
- West had the highest regional profit: **110,815.31**
- Consumer had the highest segment profit: **137,357.33**

For order analysis, Staples had the highest order count with **60 orders**.

I also summarized sales by year from 2023 to 2026 and calculated year-over-year growth to compare annual performance.

---

## 5. Excel Dashboard

After completing the PivotTable analysis, I used the results to build an interactive sales dashboard.

The four KPI cards show:

- **Total Sales:** 2,330,130.06
- **Total Quantity:** 38,680
- **Average Sales:** 228.40
- **Total Orders:** 10,203

The dashboard also contains:

- Monthly and yearly sales trend
- Sales by region
- Sales by category
- Country/Region slicer
- Ship Date timeline

The slicer and timeline allow the dashboard results to change based on the selected filters.

---

## 6. Conditional Formatting

I applied conditional formatting to the `Sales` column to make high and low sales values easier to identify.

- Sales above **500** → green
- Sales below **500** → light red

---

## Workbook Structure

| Worksheet | What I used it for |
|---|---|
| `Orders` | Main sales data and lookup results |
| `People` | Regional manager information |
| `Products` | Product and target margin information |
| `Returns` | Returned order data |
| `Hesablanan Sahələr(IF,IFS və s)` | Formula-based calculated fields |
| `Biznes Göstəriciləri(Pivot)` | PivotTable analysis |
| `Superstore Sales Dashboard` | KPI cards, charts, slicers, and timeline |

---

## Project Files

- [Completed Excel Workbook](./superstore-sales-analysis.xlsx)
- [Formula and PivotTable Documentation](./formula-documentation.md)
- `screenshots/` — screenshots from the completed analysis and dashboard

---

Week 2 gave me practical experience in taking an Excel dataset from the cleaning stage to analysis and finally presenting the results in an interactive dashboard.

**Yalchin Hasanov**
