SELECT MIN(order_date), MAX(order_date)FROM sales;
SELECT COUNT(*)FROM sales WHERE total_amount IS NULL;
CREATE VIEW sales_clean AS SELECT*FROM sales WHERE returned=FALSE;
