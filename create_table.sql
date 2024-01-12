-- CREATE TABLE customers(
--     customer_id TEXT PRIMARY KEY,
--     customer_unique_id TEXT,
--     customer_zip_code INT,
--     customer_city TEXT,
--     customer_state TEXT
-- ); 

CREATE TABLE orders (
    order_id TEXT PRIMARY KEY,
    customers_id TEXT,
    order_status TEXT,
    date_commande STRING, 
    date_confirmation STRING,
    date_reception_transporter STRING,
    date_reception_client STRING,
    date_reception_estimé STRING
);
