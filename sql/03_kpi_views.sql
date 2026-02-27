# 01_total_revenue_kpi

CREATE VIEW total_revenue_kpi AS
SELECT
    ROUND(SUM(total_amount), 2) AS total_revenue
FROM sales
WHERE returned = 0


# 02_total_profit_kpi

CREATE VIEW total_profit_kpi AS
SELECT
    ROUND(SUM(profit_margin), 2) AS total_profit
FROM sales
WHERE returned = 0


# 03_overall_profit_margin_pct

CREATE VIEW overall_profit_margin_pct AS
SELECT
    ROUND(
        SUM(profit_margin) * 100.0 / SUM(total_amount),
        2
    ) AS profit_margin_pct
FROM sales
WHERE returned = 0


# 04_return_rate_kpi

CREATE VIEW return_rate_kpi AS
SELECT
    ROUND(
        SUM(returned) * 100.0 / COUNT(*),
        2
    ) AS return_rate_pct
FROM sales


# 05_monthly_kpi

CREATE VIEW monthly_kpi AS
WITH monthly_sales AS (
    SELECT
        strftime('%Y-%m', order_date) AS month,
        SUM(total_amount) AS total_revenue
    FROM sales
    WHERE returned = 0
    GROUP BY month
)
SELECT
    month,
    total_revenue,
    total_revenue - LAG(total_revenue) OVER (ORDER BY month) AS mom_change,
    ROUND(
        (total_revenue - LAG(total_revenue) OVER (ORDER BY month)) 
        * 100.0 / LAG(total_revenue) OVER (ORDER BY month), 2
    ) AS mom_growth_pct
FROM monthly_sales
ORDER BY month


# 06_monthly_profit

CREATE VIEW monthly_profit AS
SELECT
    strftime('%Y-%m', order_date) AS month,
    ROUND(SUM(profit_margin), 2) AS total_profit
FROM sales
WHERE returned = 0
GROUP BY month
ORDER BY month


# 07_profit_by_category

CREATE VIEW profit_by_category AS
SELECT
    category,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(SUM(profit_margin), 2) AS total_profit,
    ROUND(
        SUM(profit_margin) * 100.0 / SUM(total_amount),
        2
    ) AS profit_margin_pct
FROM sales
WHERE returned = 0
GROUP BY category
ORDER BY total_profit DESC


# 08_customer_segment_kpi

CREATE VIEW customer_segment_kpi AS
SELECT
    CASE
        WHEN customer_age BETWEEN 18 AND 25 THEN '18-25'
        WHEN customer_age BETWEEN 26 AND 35 THEN '26-35'
        WHEN customer_age BETWEEN 36 AND 45 THEN '36-45'
        WHEN customer_age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,

    customer_gender,

    COUNT(DISTINCT order_id) AS total_orders,

    COUNT(DISTINCT customer_id) AS customer_count,

    ROUND(SUM(total_amount), 2) AS total_revenue,

    ROUND(SUM(profit_margin), 2) AS total_profit,

    ROUND(SUM(total_amount) * 1.0 / COUNT(DISTINCT order_id), 2) AS avg_order_value,

    ROUND(
        SUM(CASE WHEN returned = 1 THEN 1 ELSE 0 END) 
        * 100.0 / COUNT(order_id),
        2
    ) AS return_rate_pct,

    ROUND(
        SUM(profit_margin) * 100.0 / SUM(total_amount),
        2
    ) AS profit_margin_pct,

    CASE
        WHEN customer_age BETWEEN 18 AND 25 THEN 1
        WHEN customer_age BETWEEN 26 AND 35 THEN 2
        WHEN customer_age BETWEEN 36 AND 45 THEN 3
        WHEN customer_age BETWEEN 46 AND 55 THEN 4
        ELSE 5
    END AS age_order

FROM sales
GROUP BY age_group, customer_gender


# 09_revenue_by_region

CREATE VIEW revenue_by_region AS
SELECT
    region,
    SUM(total_amount) AS total_revenue
FROM sales
WHERE returned = 0
GROUP BY region
ORDER BY total_revenue DESC


# 10_return_rate_category

CREATE VIEW return_rate_by_category AS
SELECT
    category,
    ROUND(
        SUM(returned) * 100.0 / COUNT(*),
        2
    ) AS return_rate_pct
FROM sales
GROUP BY category
ORDER BY return_rate_pct DESC