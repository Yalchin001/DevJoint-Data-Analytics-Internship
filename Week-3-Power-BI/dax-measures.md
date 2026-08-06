# DAX Measures

Total Sales =
SUM(FactSales[SalesAmount])

Total Profit =
SUM(FactSales[Profit])

Sales Target =
SUM(FactSalesTarget[TargetSalesAmount])

Target Achievement % =
DIVIDE([Total Sales], [Sales Target], 0)

Previous Year Sales =
CALCULATE(
    [Total Sales],
    DATEADD(DimDate2[Date], -1, YEAR)
)

YoY Growth % =
DIVIDE(
    [Total Sales] - [Previous Year Sales],
    [Previous Year Sales],
    0
)
