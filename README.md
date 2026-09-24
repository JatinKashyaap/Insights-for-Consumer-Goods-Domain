# 📊 Insights for Consumer Goods Domain

### Strategic Ad-Hoc Data Insights & Reporting for AtliQ Hardwares

This project uses **SQL-driven business analysis** to answer 10 ad-hoc requests from the management of **AtliQ Hardwares**, a fictitious computer hardware company operating across India and international markets. The analysis focuses on transforming raw business data into clear, actionable insights across **market presence, product portfolio, manufacturing costs, customer discounts, sales trends, channel contribution, and product performance**.

---

## 📌 Table of Contents

- #overview
- [Business-problem
- [tools--technologies
- [Project Structure](#project-structure-analysis-eda
- [Problem Statements & Key Findings](#how-to-run-this-project
- [Final Recommendations](#finalor--contact
- #support

## 🔎 Overview

AtliQ Hardwares is a computer hardware manufacturer with a growing presence across multiple international markets. As the business expanded, management needed faster access to meaningful insights for making data-informed decisions.

This project addresses **10 management ad-hoc business requests** using SQL-based analysis. The objective is to convert transactional and master data into insights that management can use for decisions related to:

- Market expansion and regional presence
- Product portfolio growth
- Segment-level product performance
- Manufacturing cost analysis
- Customer discount strategy
- Monthly gross sales trends
- Quarterly sales volume
- Sales channel contribution
- Top-performing products by division

---

## 💼 Business Problem

AtliQ Hardwares was facing challenges in making quick, data-driven decisions because management did not have enough actionable insights from its existing business data.

To address this challenge, the analysis answers 10 specific ad-hoc requests from top-level management. These requests cover several important business areas, including **products, customers, markets, sales, discounts, channels, and manufacturing costs**.

The goal of the project is to demonstrate how SQL can be used not only to retrieve data, but also to translate business questions into meaningful insights that support better decision-making.

---

## 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| **SQL** | Data extraction, filtering, aggregation, comparison, ranking, and business analysis |
| **Relational Database** | Source of customer, product, sales, market, and manufacturing data |
| **Microsoft Excel** | Validation and visualization of SQL query results |
| **PowerPoint / PDF** | Presentation of business findings and management insights |
| **Git & GitHub** | Version control and project documentation |

### SQL Analysis Skills Demonstrated

The business questions in this project require analytical techniques such as:

- Multi-table data analysis
- Filtering and conditional analysis
- Aggregate calculations
- `GROUP BY` and sorting
- Year-over-year comparisons
- Percentage calculations
- Customer and product ranking
- Top-N analysis
- Segment and division-level analysis
- Time-based sales analysis

---

## 📁 Project Structure

The repository is organized to keep the **SQL queries, remote database access details, query-result visualizations, and final presentation** easy to navigate.

## 📂 Project Structure

```text
Insights-for-Consumer-Goods-Domain/
│
├── 📁 Presentation File
│   └── Project presentation and business insights deck
│
├── 📁 Query Results Visuals
│   └── Screenshots and visual outputs generated from SQL query results
│
├── 📁 SQL Queries
│   └── SQL scripts used for data extraction, analysis, and reporting
│
├── 📄 Database_Details.txt
│   └── Database schema, table descriptions, and connection details
│
└── 📄 README.md
    └── Project documentation and setup guide
```

### Folder Description

| Folder/File | Description |
|-------------|-------------|
| **Presentation File** | Contains the final presentation highlighting key business insights and recommendations. |
| **Query Results Visuals** | Stores screenshots, charts, and visual outputs generated from SQL analyses. |
| **SQL Queries** | Includes all SQL scripts used for data exploration, KPI calculation, and business analysis. |
| **Database_Details.txt** | Contains information about the database structure, tables, and relationships used in the project. |
| **README.md** | Provides project overview, objectives, methodology, and usage instructions. |

### 📌 Folder Overview

* **`sql_queries/`** – Contains 10 SQL files addressing different ad-hoc business requests raised by AtliQ Hardwares management using advanced SQL techniques.

* **`database/`** – Contains the connection details required to access the remote database and execute the queries.

* **`visuals/`** – Contains the Excel workbook used to present and visualize the results generated from SQL queries.

* **`presentation/`** – Contains the final analysis presentation summarizing key findings, business insights, and recommendations.

* **`README.md`** – Provides complete documentation of the project, including the business problem, SQL approach, repository structure, and instructions for running the analysis.


> Update the folder names above if your repository uses a different structure.

---

## 📈 Exploratory Data Analysis (EDA)

The analysis explores the business from several perspectives.

### 🌏 Market Analysis
The geographic presence of **AtliQ Exclusive** was analyzed to understand its footprint across the APAC region.

### 📦 Product Portfolio Analysis
Unique products were compared across fiscal years and product segments to identify portfolio growth and category concentration.

### 🏭 Manufacturing Cost Analysis
Products with the highest and lowest manufacturing costs were identified to provide greater cost visibility.

### 🧾 Customer Discount Analysis
Pre-invoice discount percentages were analyzed for major Indian customers to identify customers receiving the highest average discounts.

### 💰 Sales Trend Analysis
Monthly gross sales were examined to identify seasonality and high-performing sales periods.

### 📊 Sales Volume Analysis
Quarterly sold quantities were compared to determine the strongest sales quarter.

### 🛒 Channel Analysis
Gross sales contribution was evaluated across **Retailer, Direct, and Distributor** channels.

### 🏆 Product Performance Analysis
The top three products by sold quantity were identified within each business division for FY2021.

---

## 🧩 Problem Statements & Key Findings

### 1️⃣ Markets in which AtliQ Exclusive operates in the APAC region

AtliQ Exclusive operates across **8 APAC markets**:

- India
- Indonesia
- Japan
- Philippines
- South Korea
- Australia
- New Zealand
- Bangladesh

**Key Insight:**  
The customer has a broad regional footprint, with these eight markets representing a significant part of its overall market presence.

---

### 2️⃣ Percentage increase in unique products in 2021 vs. 2020

| Fiscal Year | Unique Products |
|---|---:|
| 2020 | 245 |
| 2021 | 334 |

**Product Portfolio Growth: 36.33%**

**Key Insight:**  
The product portfolio expanded substantially in FY2021. Accessories accounted for a large share of the new additions, indicating strong portfolio expansion in this segment.

---

### 3️⃣ Unique product count by segment

| Segment | Product Count |
|---|---:|
| Notebook | 129 |
| Accessories | 116 |
| Peripherals | 84 |
| Desktop | 32 |
| Storage | 27 |
| Networking | 9 |

**Key Insight:**  
Notebook and Accessories together account for approximately **62% of the product portfolio**, while Storage and Networking have a much smaller presence.

---

### 4️⃣ Segment with the highest increase in unique products

| Segment | 2020 | 2021 | Increase |
|---|---:|---:|---:|
| Accessories | 69 | 103 | **34** |
| Peripherals | 59 | 75 | 16 |
| Notebook | 92 | 108 | 16 |
| Desktop | 7 | 22 | 15 |
| Storage | 12 | 17 | 5 |
| Networking | 6 | 9 | 3 |

**Key Insight:**  
**Accessories recorded the highest absolute increase**, adding 34 unique products. Desktop showed very strong percentage growth, while Notebook remained the largest segment by unique product count in 2021.

---

### 5️⃣ Products with the highest and lowest manufacturing costs

| Product | Manufacturing Cost |
|---|---:|
| AQ HOME Allin1 Gen 2 | **263.42** |
| AQ Master wired x1 Ms | **0.8654** |

**Key Insight:**  
The wide difference in manufacturing costs highlights the importance of product-level cost visibility when evaluating pricing and profitability.

---

### 6️⃣ Top 5 customers receiving the highest average pre-invoice discounts in India — FY2021

| Customer | Average Discount |
|---|---:|
| Flipkart | **30.83%** |
| Viveks | 30.38% |
| Ezone | 30.28% |
| Croma | 30.25% |
| Amazon | 29.33% |

**Key Insight:**  
Discounts among the top customers are closely concentrated around **29%–31%**. Flipkart received the highest average discount.

---

### 7️⃣ Monthly gross sales for AtliQ Exclusive

The monthly analysis shows strong variation in gross sales across the fiscal year.

For the periods available in the project output:

- FY2021 November gross sales: **62.30M**
- FY2022 November gross sales: **259.11M**
- FY2021 April gross sales: **22.15M**
- FY2021 August gross sales: **21.84M**

**Key Insight:**  
November emerges as an important high-sales period, indicating a recurring seasonal pattern that can support better inventory and supply planning.

---

### 8️⃣ Quarter with the highest total sold quantity in FY2020

| Quarter | Total Sold Quantity |
|---|---:|
| **Q1** | **7,005,619** |
| Q2 | 6,649,642 |
| Q4 | 5,042,541 |
| Q3 | 2,075,087 |

**Key Insight:**  
**Q1 recorded the highest sold quantity**, making September–November an important demand and fulfillment period.

---

### 9️⃣ Channel contributing the most gross sales in FY2021

| Channel | Gross Sales | Contribution |
|---|---:|---:|
| Retailer | 3,708.46M | **73.21%** |
| Direct | 784.14M | 15.48% |
| Distributor | 572.86M | 11.31% |

**Key Insight:**  
The **Retailer channel dominates gross sales**, contributing more than 73% of FY2021 revenue. This demonstrates the strength of the retailer network but also highlights significant channel concentration.

---

### 🔟 Top 3 products by sold quantity in each division — FY2021

#### N & S Division

| Product | Product Code | Sold Quantity |
|---|---|---:|
| AQ Pen Drive 2 IN 1 | A6720160103 | **701,373** |
| AQ Pen Drive DRC | A6818160202 | 688,003 |
| AQ Pen Drive DRC | A6819160203 | 676,245 |

#### P & A Division

| Product | Product Code | Sold Quantity |
|---|---|---:|
| AQ Gamers Ms | A2319150302 | **428,498** |
| AQ Maxima Ms | A2520150501 | 419,865 |
| AQ Maxima Ms | A2520150504 | 419,471 |

#### PC Division

| Product | Product Code | Sold Quantity |
|---|---|---:|
| AQ Digit | A4218110202 | **17,434** |
| AQ Velocity | A4319110306 | 17,280 |
| AQ Digit | A4218110208 | 17,275 |

**Key Insight:**  
The results identify the strongest products within each division and can support inventory allocation, product prioritization, and sales planning.

---

Here’s a cleaner GitHub README version that explains how users can connect to the **remote database using credentials provided in the repository’s Notepad/text file**:

## ▶️ How to Run This Project

1.**Navigate to the folder where you want to download the repository:**

2.**Inside the folder < Right Click < Show More Options < Open Git Bash here** [ Note:- You Must have the Git Installed in order to clone this repository]

3.**Inside the git terminal window copy the following code below in order to Clone or download this repository.**

```bash
https://github.com/JatinKashyaap/Insights-for-Consumer-Goods-Domain.git
```

### 3. Connect to the Remote Database

Open the **database credentials Notepad (`.txt`) file** provided in the repository.

Use the mentioned **Host Name, Port, Username, Password, and Database Name** to establish a connection to the remote database through your SQL client (such as MySQL Workbench).

Once connected successfully, you can directly access the project database and execute the SQL queries without importing the dataset locally.

> **Note:** Refer to the credentials file carefully while configuring the remote database connection.

### 4. Execute the SQL Queries

Open and execute the SQL files available in the `sql_queries/` folder. Each query is designed to answer a specific **ad-hoc business request raised by AtliQ Hardwares management**.

### 5. Review the Query Outputs

After executing the queries, compare and explore the results with the prepared visualizations available in:

```text
visuals/Visuals for Query Resuls.xlsx
```

These outputs help translate the SQL query results into meaningful and actionable business insights.

**Important:** If this is a public GitHub repository, avoid committing real database usernames/passwords in a `.txt` file. A safer approach is to provide a `credentials.example.txt` or `.env.example` with placeholders and share actual credentials privately.

### 6. Review the business presentation

Open:

```text
presentation/Ad_hoc_Analysis_Presentation.pdf
```

to see the final charts, business insights, and management-oriented conclusions.

---

## 🎯 Final Recommendations

Based on the analysis, management can consider the following actions:

1. **Prepare for seasonal demand:** Strengthen inventory and supply-chain readiness for the September–November period, where sales and volume are particularly strong.

2. **Review product portfolio balance:** Accessories are expanding rapidly, while Storage and Networking have relatively smaller portfolios. Management should evaluate portfolio growth against market demand.

3. **Optimize customer discounts:** High discounts provided to major retailers should be assessed against sales volume, customer profitability, and margin contribution.

4. **Reduce channel concentration:** With Retailers contributing more than 73% of gross sales, strengthening Direct and Distributor channels could reduce dependence on a single sales channel.

5. **Use manufacturing-cost visibility in pricing decisions:** The large difference between the highest- and lowest-cost products highlights the importance of margin-aware pricing.

6. **Prioritize high-performing products:** Top-selling products within each division can guide inventory allocation, production planning, and sales strategy.

---

## 👤 Author & Contact

**Jatin Kashyap**  
Business Analyst

🔗 **GitHub:** [JatinKashyaap](https://github.com/JatinKashyaap)

---

## ⭐ Support

If you found this project useful or insightful, consider giving the repository a **⭐ Star**.

> **From raw data to actionable business decisions — using SQL to solve real-world consumer goods challenges.**
