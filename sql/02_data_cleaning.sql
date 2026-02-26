SELECTMIN(order_date),MAX(order_date)FROM sales;
SELECTCOUNT(*)FROM salesWHERE total_amountISNULL;
CREATEVIEW sales_cleanASSELECT*FROM salesWHERE returned=FALSE;