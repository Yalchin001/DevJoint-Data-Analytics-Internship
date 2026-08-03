# 📊 Week 2: Excel Data Analysis

## 📌 Overview

This folder contains the work completed during Week 2 of the DevJoint Data Analytics Internship.

The main objective was to analyze the Superstore sales dataset using Microsoft Excel, apply lookup and logical formulas, create PivotTable-based business summaries, and develop an interactive sales dashboard.

---

## 🛠️ Excel Techniques Applied

- Data cleaning and formatting
- `XLOOKUP`
- `VLOOKUP`
- `INDEX` and `MATCH`
- `SUMIFS` and `COUNTIFS`
- `IF`, `IFS`, and nested `IF`
- PivotTables
- PivotCharts
- Slicers and timeline filters
- Summary KPI cards
- Dashboard design

---

## 🔍 Work Completed

- Organized and prepared the Superstore sales data for analysis.
- Retrieved related information from the People and Products worksheets using lookup formulas.
- Created calculated fields using conditional and aggregation formulas.
- Prepared PivotTables to summarize key business indicators.
- Created four summary KPI cards: Total Sales, Total Quantity, Average Sales, and Total Orders.
- Analyzed monthly and yearly sales trends.
- Compared sales performance by region and product category.
- Added a Country/Region slicer and Ship Date timeline for interactive filtering.
- Developed an interactive Superstore Sales Dashboard.

---

## 📈 Dashboard Components

The Excel dashboard includes:

- **Total Sales**
- **Total Quantity**
- **Average Sales**
- **Total Orders**
- **Monthly and Yearly Sales Trend**
- **Sales by Region**
- **Sales by Category**
- **Country/Region Slicer**
- **Ship Date Timeline**

---

## 📂 Workbook Structure

| Worksheet | Description |
|---|---|
| `Biznes Göstəriciləri(Pivot)` | PivotTable-based business metrics and summaries |
| `Superstore Sales Dashboard` | Interactive sales dashboard and summary KPI cards |
| `Orders` | Main sales transaction dataset and lookup results |
| `Hesablanan Sahələr(IF,IFS və s)` | Calculated fields created with logical and aggregation formulas |
| `People` | Regional personnel reference data |
| `Products` | Product reference data |
| `Returns` | Returned order information |

---

## 📁 Repository Files

| File | Description |
|---|---|
| `README.md` | Overview and documentation of the Week 2 Excel project |
| `superstore-sales-analysis.xlsx` | Completed Excel analysis and interactive dashboard |
| `screenshots/` | Supporting screenshots of the completed checkpoints and dashboard |

---

## 🧰 Tools Used

- Microsoft Excel
- Excel formulas
- PivotTables
- PivotCharts
- Slicers
- Timeline filters

---

---

## 📸 Checkpoint Evidence

The following sections document the six Week 2 checkpoints completed during the Excel analysis.

📥 [Download the completed Excel workbook](./superstore-sales-analysis.xlsx)

---

<details>
<summary><strong>Checkpoint 1 — Data Cleaning</strong></summary>

### 🧹 Data Cleaning and Preparation

The `Orders`, `People`, `Products`, and `Returns` worksheets were reviewed and prepared for analysis.

#### 1. Blank Row Handling

- Used the `ISBLANK` function to identify blank and non-blank cells.
- Filtered the results by `FALSE` to retain the populated records.
- Selected the filtered data using `Home > Find & Select > Go To Special > Visible Cells Only`.
- Copied the visible records to a new worksheet.
- After validating the copied data, the new worksheet was renamed using the original worksheet name and the previous worksheet was removed.

#### 2. Data Type Conversion and Validation

- Converted date fields to the `Date` data type and numeric fields to the `Number` data type.
- Converted the `Order Date` values using `Data > Data Tools > Text to Columns > Delimited`.
- Created a temporary validation column using the `ISTEXT` function.
- The function returned `FALSE` for all checked values, confirming that the dates were no longer stored as text.
- Removed the temporary validation column after completing the check.

#### 3. Target Margin Conversion

- Reviewed the `Target Margin` column in the `Products` worksheet.
- Used the `ISNUMBER` function to check whether the values were stored as numbers.
- The function returned `FALSE`, confirming that the values were initially stored as text.
- Converted the column using `Data > Data Tools > Text to Columns > Delimited`.
- Applied the `Percentage` number format after the conversion.

#### 4. Formatting Standardization

- Standardized the data types across all four worksheets.
- Changed the worksheet font to `Arial` for consistent presentation.

#### 5. Duplicate Review

Repeated values were found in individual columns; however, they belonged to different orders and distinct records. They were not complete duplicate rows.

No valid records were removed because deleting these repeated values would cause data loss and could affect the accuracy of the final analysis.

![Checkpoint 1 — Data Cleaning](screenshots/checkpoint-01-data-cleaning.jpeg)

</details>

---

<details>
<summary><strong>Checkpoint 2 — PivotTables for Business Questions</strong></summary>

### PivotTable Analysis

Multiple PivotTables were created to answer specific sales, profit, order, and trend-related business questions.

#### Sales Analysis

- Technology generated the highest category sales with **842,456.96**.
- New York City recorded the highest city-level sales with **256,368.16**.
- The West region generated the highest regional sales with **739,879.80**.
- The Consumer segment recorded the highest segment sales with **1,174,198.71**.
- Canon imageCLASS 2200 Advanced Copier generated the highest product sales with **61,599.82**.

#### Profit Analysis

- Technology generated the highest category profit with **147,310.81**.
- New York City recorded the highest city-level profit with **62,036.98**.
- The West region generated the highest regional profit with **110,815.31**.
- The Consumer segment recorded the highest segment profit with **137,357.33**.

#### Order and Trend Analysis

- Staples recorded the highest order count with **60 orders**.
- Sales performance was summarized by year from 2023 to 2026.
- Year-over-year sales growth was calculated to compare annual performance.

![Checkpoint 2 - PivotTables](./screenshots/checkpoint-02-pivot-tables.jpeg)

</details>

---

<details>
<summary><strong>Checkpoint 3 — Lookup Formulas</strong></summary>

### Lookup Formulas Applied

Three lookup approaches were used to retrieve related information from the `People` and `Products` worksheets:

- `XLOOKUP` matched each region with the corresponding regional manager.
- `VLOOKUP` matched Product IDs with supplier information.
- `INDEX` and `MATCH` returned the target margin for each Product ID.

These formulas added the `Regional Manager`, `Supplier`, and `Target Margin` fields to the `Orders` dataset.

![Checkpoint 3 - Lookup Formulas](./screenshots/checkpoint-03-lookup-formulas.jpeg)

</details>

---

<details>
<summary><strong>Checkpoint 4 — Calculated Fields</strong></summary>

### Calculated Fields Created

Aggregation and logical formulas were used to create additional analytical fields:

- `SUMIFS` calculated sales based on multiple conditions.
- `COUNTIFS` counted records matching the selected criteria.
- `IF` classified sales values as `Yüksək Satış` or `Aşağı Satış`.
- Nested `IF` classified records as `VIP`, `Special`, `Formal`, or `Normal`.
- `IFS` evaluated discount and product quantity conditions.
- `ROUND` limited adjusted discount values to two decimal places.

![Checkpoint 4 - Calculated Fields](./screenshots/checkpoint-04-calculated-fields.jpeg)

</details>

---

<details>
<summary><strong>Checkpoint 5 — Dashboard and Conditional Formatting</strong></summary>

### Interactive Sales Dashboard

An interactive Excel dashboard was developed with four summary KPI cards:

- Total Sales: **2,330,130.06**
- Total Quantity: **38,680**
- Average Sales: **228.40**
- Total Orders: **10,203**

The dashboard includes:

- Monthly and yearly sales trend line chart
- Regional sales pie chart
- Category sales column chart
- Country/Region slicer
- Ship Date timeline

![Checkpoint 5 - Dashboard](./screenshots/checkpoint-05-dashboard.jpeg)

### Conditional Formatting

Conditional formatting was applied to the `Sales` column:

- Sales values greater than **500** are highlighted in green.
- Sales values below **500** are highlighted in light red.

This formatting makes higher and lower sales values easier to identify.

![Checkpoint 5 - Conditional Formatting](./screenshots/checkpoint-05-conditional-formatting.jpeg)

</details>

---

<details>
<summary><strong>Checkpoint 6 — Formula Documentation</strong></summary>

### Formula and PivotTable Documentation

A separate documentation file was created to explain:

- Lookup formulas
- Aggregation formulas
- Logical formulas
- Dashboard calculations
- PivotTable configuration
- Main PivotTable findings

📖 [Open the Excel formula and PivotTable documentation](./formula-documentation.md)

</details>

---


## ✅ Status

**Week 2 completed.**

---

## 👤 Author

**Yalchin Hasanov**  
Junior Data Analyst
