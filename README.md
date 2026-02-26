# 🚀 Customer Sales Analytics Dashboard

**SQL + Power BI + AI-Assisted Analytics Project**

End-to-end data analytics project transforming raw transactional data into actionable business insights using SQL modeling and interactive Power BI dashboards.

---

## 📌 Project Objective

To analyze customer purchasing behavior, profitability drivers, and product/category performance in order to identify:

- High-value customer segments
- Profit-driving product categories
- Revenue–profit relationships
- Return rate impact on margin
- Regional performance gaps

---

## 🛠 Tech Stack

- **SQL (SQLite)** — Data modeling, KPI Views
- **Power BI** — Dashboard & Data Visualization
- **AI Tools** — SQL optimization, KPI structuring, dashboard design refinement
- **Data Modeling Concepts** — Aggregation, segmentation, profit analysis

---

# 📊 Dashboard Overview

---

## 1️⃣ Executive Overview

### Visuals:

- Total Revenue
- Total Profit
- Profit Margin
- Return Rate
- Monthly Revenue vs Profit Trend

### 📈 Key Insights

- Overall revenue and profit show a consistent trend, with some variation across months.  
- Revenue growth alone does not guarantee profitability; return rates and margins are key drivers.  
- Category-level analysis shows wide revenue differences; profit generally correlates with revenue,  
  but Electronics has disproportionately high revenue relative to profit, highlighting margin pressure.

---

## 2️⃣ Customer Segmentation Analysis

**Visuals:**

- **Profit by Age Group & Gender** (Bar chart)  
- **Gender Distribution** (Bar/Pie chart)  
- **Revenue vs Profit Scatter**  
- **Multi-metric Matrix** (Revenue, Profit, Average Order Value)

---

### 🎯 Major Findings

### 🔹 Most Profitable Age Group: **56+**

- Highest total profit across both male and female customers.
- Strong revenue–profit alignment.
- Most consistent margin performance.

### 🔹 Gender Distribution

- Male: **48.17%**
- Female: **47.11%**
- Nearly balanced distribution → revenue differences driven more by age than gender.

### 🔹 Revenue vs Profit Correlation

- Age 18–25 shows weakest revenue-to-profit relationship.
- 56+ group shows strongest positive correlation.
- Other age groups follow a moderate upward trend.

👉 Yes, this can be interpreted as an overall upward relationship between revenue and profitability by age segment.

### 🔹 Notable Insight from Small Multiples

- 56+ has:
    - Highest Revenue
    - Highest Profit
    - BUT lowest Average Order Value

💡 Interpretation:

Older customers purchase more frequently but in smaller order sizes — strong lifetime value potential.

---

## 3️⃣ Category & Regional Performance

**Visuals:**

- **Revenue vs Profit Scatter** (Category)  
- **Return Rate by Category** (Bar chart)  
- **Revenue by Region** (Map)

---

### 📦 Category Insights

### 🟢 Electronics

- Highest Revenue
- Highest Profit
- Strong margin driver
- Core growth engine of the business

### 🔵 Grocery

- Lowest Revenue
- Lowest Profit
- Likely low-margin, high-frequency category

### 🔴 Fashion

- Highest Return Rate
- Margin leakage risk
- Requires operational optimization (sizing, product accuracy, return policy)

---

### 🌎 Regional Insights

- **Central region** shows lowest revenue contribution.
- Potential under-penetrated market.
- Optimization opportunity (marketing or logistics improvement).

---

# 📊 Strategic Takeaways

1. Profitability is age-driven more than gender-driven.
2. The 56+ segment is the most valuable customer group.
3. High return categories significantly reduce net profit.
4. Revenue concentration in electronics increases dependency risk.
5. Regional performance imbalance indicates expansion opportunity.

---

# 🧠 Analytical Skills Demonstrated

- KPI Design & Financial Metric Calculation
- Customer Segmentation Modeling
- Revenue vs Profit Relationship Analysis
- Return Rate Impact Assessment
- Multi-dimensional Aggregation (Age × Gender × Category × Region)
- Dashboard UX Structuring

---

# 📁 Project Structure

```
customer-sales-analytics-dashboard/
│
├── data/
│   └── sales.db
│
├── sql/
│   └── kpi_views.sql
│
├── dashboard/
│   └── sales_dashboard.pbix
│
├── images/
│   ├── page1_overview.png
│   ├── page2_customer.png
│   └── page3_category.png
│
└── README.md
```

---

# 🎯 Business Value

This project simulates a real-world business analytics scenario where:

- SQL is used for structured KPI modeling
- BI tools visualize trends
- AI tools assist in refining analytical approach
- Insights drive strategic recommendations
