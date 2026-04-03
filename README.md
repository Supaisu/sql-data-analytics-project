# SQL Data Analytics Project

This project contains a collection of SQL scripts demonstrating various analytical techniques applied to the **Gold Layer** of the [Data Warehouse Project](https://github.com/Supaisu/sql-data-warehouse-project). It covers exploratory data analysis, advanced analytics, and business reporting using SQL Server.

---

## Project Overview

This project is structured around three phases of data analysis:

1. **Exploratory Data Analysis (EDA):** Initial exploration of the data to understand its structure, quality, and key characteristics.
2. **Advanced Analytics:** Applying analytical techniques such as trend analysis, cumulative metrics, segmentation, and ranking to uncover deeper insights.
3. **Business Reporting:** Building SQL-based reports for customer and product performance to support strategic decision-making.

---

## Repository Structure

```
sql-data-analytics-project/
│
├── scripts/                           # SQL scripts for analysis and reporting
│   ├── Change-Over-Time Trends.sql    # Trend analysis over time periods
│   ├── Cumulative Analysis.sql        # Running totals and cumulative metrics
│   ├── Customer Report.sql            # Customer behaviour and segmentation report
│   ├── Data Segmentation.sql          # Grouping data into meaningful segments
│   ├── Date Exploration.sql           # Exploring date dimensions and patterns
│   ├── Dimensions Exploration.sql     # Analysing dimension tables and attributes
│   ├── Magnitude Analysis.sql         # Comparing measures by size and scale
│   ├── Measure Exploration.sql        # Exploring key metrics and measures
│   ├── Part To Whole Analysis.sql     # Proportional and percentage-based analysis
│   ├── Performance Analysis.sql       # Benchmarking and performance comparisons
│   ├── Product Report.sql             # Product performance and category report
│   └── Ranking Analysis.sql           # Ranking and top-N analysis
│
├── README.md                          # Project overview and instructions
└── LICENSE                            # License information for the repository
```

---

## Analytical Techniques Covered

| Technique | Script | Description |
|---|---|---|
| EDA – Dates | `Date Exploration.sql` | Exploring date ranges, gaps, and time-based patterns |
| EDA – Dimensions | `Dimensions Exploration.sql` | Profiling dimension tables and categorical attributes |
| EDA – Measures | `Measure Exploration.sql` | Summarising key numeric measures and distributions |
| Trend Analysis | `Change-Over-Time Trends.sql` | Analysing how metrics change across time periods |
| Cumulative Analysis | `Cumulative Analysis.sql` | Running totals and cumulative aggregations |
| Performance Analysis | `Performance Analysis.sql` | Comparing actuals against benchmarks or targets |
| Magnitude Analysis | `Magnitude Analysis.sql` | Comparing data by size, volume, or scale |
| Ranking Analysis | `Ranking Analysis.sql` | Top-N analysis using window functions |
| Segmentation | `Data Segmentation.sql` | Grouping records into meaningful business segments |
| Part-to-Whole | `Part To Whole Analysis.sql` | Proportional contributions and percentage breakdowns |
| Customer Report | `Customer Report.sql` | Comprehensive customer behaviour and metrics report |
| Product Report | `Product Report.sql` | Product performance and category-level insights |

---

## Data Source

All scripts query the **Gold Layer** tables from the [SQL Data Warehouse Project](https://github.com/Supaisu/sql-data-warehouse-project), which follows a star schema with:

- `gold.dim_customers` — Customer dimension
- `gold.dim_products` — Product dimension
- `gold.fact_sales` — Sales fact table

---

## Tools & Technologies

- **SQL Server Express:** Database engine
- **SQL Server Management Studio (SSMS):** Query development and execution
- **Git & GitHub:** Version control and collaboration

---

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.

---

## About Me

I am an aspiring data professional on a mission to become a valuable asset to a firm by bringing the skills and fresh perspective to deliver actionable results!
