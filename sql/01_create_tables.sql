CREATE TABLE sales (
    order_id TEXT,
    customer_id TEXT,
    product_id TEXT,
    category TEXT,
    price REAL,
    discount REAL,
    quantity INTEGER,
    payment_method TEXT,
    order_date TEXT,         
    delivery_time_days INTEGER,
    region TEXT,
    returned INTEGER,       -- 0 = FALSE, 1 = TRUE
    total_amount REAL,
    shipping_cost REAL,
    profit_margin REAL,
    customer_age INTEGER,
    customer_gender TEXT
);

