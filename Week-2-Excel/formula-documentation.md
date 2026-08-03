# 🧮 Excel Formula Documentation

## 📌 Overview

This document provides a short explanation of the Excel formulas used during Week 2 of the DevJoint Data Analytics Internship.

The formulas were applied to retrieve related information, calculate business metrics, classify sales records, and prepare summary values for the dashboard.

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
