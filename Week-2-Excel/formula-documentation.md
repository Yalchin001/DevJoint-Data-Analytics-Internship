# 🧮 Excel Formula Documentation

## 📌 Overview

This document provides a short explanation of the Excel formulas used during Week 2 of the DevJoint Data Analytics Internship.

The formulas were applied to retrieve related information, calculate business metrics, classify sales records, and prepare summary values for the dashboard.


---

## 📊 PivotTable Analysis

PivotTables are not Excel formulas, but they were used as a major part of the Week 2 analysis to summarize the Superstore dataset and answer specific business questions.

### Sales Analysis

- **Sales by Product Category:** Technology generated the highest sales with 842,456.96.
- **Top 10 Cities by Sales:** New York City recorded the highest sales with 256,368.16.
- **Sales by Region:** The West region generated the highest sales with 739,879.80.
- **Sales by Customer Segment:** The Consumer segment recorded the highest sales with 1,174,198.71.
- **Top 10 Products by Sales:** Canon imageCLASS 2200 Advanced Copier generated the highest product sales with 61,599.82.

### Profit Analysis

- **Profit by Product Category:** Technology generated the highest profit with 147,310.81.
- **Top 10 Cities by Profit:** New York City recorded the highest profit with 62,036.98.
- **Profit by Region:** The West region generated the highest profit with 110,815.31.
- **Profit by Customer Segment:** The Consumer segment recorded the highest profit with 137,357.33.

### Order and Trend Analysis

- **Top 10 Products by Order Count:** Staples recorded the highest order count with 60 orders.
- **Yearly Sales:** Sales performance was summarized by year from 2023 to 2026.
- **Year-over-Year Growth:** Sales growth percentages were calculated to compare annual performance.

### PivotTable Configuration

The PivotTables were created using fields such as:

- `Category`, `City`, `Region`, `Segment`, `Product Name`, and `Order Date` in the **Rows** area.
- `Sales` and `Profit` as **Sum** calculations in the **Values** area.
- `Order ID` as a **Count** calculation for order frequency.
- Top 10 value filters for city and product rankings.
- Year grouping for annual sales and growth analysis.

---

## 🔎 Lookup Formulas

### XLOOKUP

```excel
=XLOOKUP(@$M:$M,People!$B:$B,People!A:A)
```

**Purpose:** Matches the region in the `Orders` worksheet with the region list in the `People` worksheet and returns the corresponding regional manager.

**Output:** Regional Manager.

---

### VLOOKUP

```excel
=VLOOKUP(O2,Products!$A:$E,3,FALSE)
```

**Purpose:** Searches for the Product ID in the `Products` worksheet and returns the corresponding supplier information from the third column.

**Output:** Supplier.

---

### INDEX and MATCH

```excel
=INDEX(Products!$E:$E,MATCH(O2,Products!$A:$A,0))
```

**Purpose:** Finds the Product ID in the `Products` worksheet and returns the matching target margin.

**Output:** Target Margin.

---

## ➕ Aggregation Formulas

### SUMIFS

```excel
=SUMIFS(Orders!U:U,Orders!J:J,Orders!J2,Orders!T:T,Orders!T13)
```

**Purpose:** Sums the sales values that meet the specified city and product name conditions.

**Output:** Total sales for the matching criteria.

---

### COUNTIFS

```excel
=COUNTIFS(Orders!K:K,Orders!K16)
```

**Purpose:** Counts the records that match the selected state or province.

**Output:** Number of matching records.

---

## 🔀 Logical Formulas

### IF

```excel
=IF(Orders!U2>500,"Yüksək Satış","Aşağı Satış")
```

**Purpose:** Classifies each sales record according to whether the sales value is greater than 500.

**Output:** `Yüksək Satış` or `Aşağı Satış`.

---

### Nested IF

```excel
=IF(Orders!U2>500,IF(Orders!E2="First Class",IF(Orders!W2=0,"VIP","Special"),"Formal"),"Normal")
```

**Purpose:** Creates a customer classification by evaluating the sales amount, shipping mode, and discount value.

**Output:** `VIP`, `Special`, `Formal`, or `Normal`.

---

### IFS

```excel
=IFS(Orders!W2=0,"Endirim Yoxdur",SUMIFS(Orders!$V:$V,Orders!$T:$T,Orders!T2)>10,ROUND(Orders!W2*1.15,2),SUMIFS(Orders!$V:$V,Orders!$T:$T,Orders!T2)<=10,"Endirim Yoxdur")
```

**Purpose:** Evaluates the discount and total product quantity. Records without a discount are marked accordingly, while qualifying discount values are increased by 15% and rounded to two decimal places.

**Output:** Adjusted discount or `Endirim Yoxdur`.

---

## 📊 Dashboard Formulas

### Total Sales

```excel
=SUM(Orders!U:U)
```

Calculates the total sales value displayed on the dashboard.

### Total Quantity

```excel
=SUM(Orders!V:V)
```

Calculates the total quantity of products sold.

### Average Sales

```excel
=AVERAGE(Orders!U:U)
```

Calculates the average sales value.

### Total Orders

```excel
=COUNTA(Orders!B:B)
```

Counts the non-empty Order ID records used for the Total Orders summary card.

---

## ✅ Functions Used

- `XLOOKUP`
- `VLOOKUP`
- `INDEX`
- `MATCH`
- `SUMIFS`
- `COUNTIFS`
- `IF`
- `IFS`
- `ROUND`
- `SUM`
- `AVERAGE`
- `COUNTA`
