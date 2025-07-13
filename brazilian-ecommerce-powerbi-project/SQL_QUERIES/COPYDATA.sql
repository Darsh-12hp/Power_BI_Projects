COPY customers
FROM 'D:/Data Analyst/PowerBi/BRAZILLIAN/DATA_SETS/olist_customers_dataset.csv'
DELIMITER ',' CSV HEADER;


COPY orders
FROM 'D:/Data Analyst/PowerBi/BRAZILLIAN/DATA_SETS/olist_orders_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY products
FROM 'D:/Data Analyst/PowerBi/BRAZILLIAN/DATA_SETS/olist_products_dataset.csv'
DELIMITER ',' CSV HEADER;


COPY product_category_name_translation
FROM 'D:/Data Analyst/PowerBi/BRAZILLIAN/DATA_SETS/product_category_name_translation.csv'
DELIMITER ',' CSV HEADER;

COPY order_payments
FROM 'D:/Data Analyst/PowerBi/BRAZILLIAN/DATA_SETS/olist_order_payments_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY sellers
FROM 'D:/Data Analyst/PowerBi/BRAZILLIAN/DATA_SETS/olist_sellers_dataset.csv'
DELIMITER ',' CSV HEADER;


COPY order_items
FROM 'D:/Data Analyst/PowerBi/BRAZILLIAN/DATA_SETS/olist_order_items_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY order_reviews
FROM 'D:/Data Analyst/PowerBi/BRAZILLIAN/DATA_SETS/olist_order_reviews_dataset.csv'
DELIMITER ',' CSV HEADER;


select * from customers;
select * from orders;
select * from order_payments;
select * from products;
select * from product_category_name_translation;
select * from order_items;
select * from order_reviews;
select * from sellers;