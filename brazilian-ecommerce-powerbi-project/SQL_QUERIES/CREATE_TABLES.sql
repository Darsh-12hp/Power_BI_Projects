CREATE TABLE customers (
    customer_id VARCHAR PRIMARY KEY,
    customer_unique_id VARCHAR,
    customer_zip_code_prefix INTEGER,
    customer_city VARCHAR,
    customer_state VARCHAR
);



CREATE TABLE orders (
    order_id VARCHAR PRIMARY KEY,
    customer_id VARCHAR,
    order_status VARCHAR,
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);

CREATE TABLE order_items (
    order_id VARCHAR,
    order_item_id INTEGER,
    product_id VARCHAR,
    seller_id VARCHAR,
    shipping_limit_date TIMESTAMP,
    price NUMERIC,
    freight_value NUMERIC,
    PRIMARY KEY (order_id, order_item_id)
);


CREATE TABLE order_payments (
    order_id VARCHAR,
    payment_sequential INTEGER,
    payment_type VARCHAR,
    payment_installments INTEGER,
    payment_value NUMERIC
);


CREATE TABLE order_reviews (
    review_id VARCHAR PRIMARY KEY,
    order_id VARCHAR,
    review_score INTEGER,
    review_comment_title VARCHAR,
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP
);


CREATE TABLE products (
    product_id VARCHAR PRIMARY KEY,
    product_category_name VARCHAR,
    product_name_length INTEGER,
    product_description_length INTEGER,
    product_photos_qty INTEGER,
    product_weight_g NUMERIC,
    product_length_cm NUMERIC,
    product_height_cm NUMERIC,
    product_width_cm NUMERIC
);


CREATE TABLE sellers (
    seller_id VARCHAR PRIMARY KEY,
    seller_zip_code_prefix INTEGER,
    seller_city VARCHAR,
    seller_state VARCHAR
);


CREATE TABLE product_category_name_translation (
    product_category_name VARCHAR PRIMARY KEY,
    product_category_name_english VARCHAR
);




-- orders → customers
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

-- order_items → orders
ALTER TABLE order_items
ADD CONSTRAINT fk_items_orders FOREIGN KEY (order_id) REFERENCES orders(order_id);

-- order_items → products
ALTER TABLE order_items
ADD CONSTRAINT fk_items_products FOREIGN KEY (product_id) REFERENCES products(product_id);

-- order_items → sellers
ALTER TABLE order_items
ADD CONSTRAINT fk_items_sellers FOREIGN KEY (seller_id) REFERENCES sellers(seller_id);

-- order_payments → orders
ALTER TABLE order_payments
ADD CONSTRAINT fk_payments_orders FOREIGN KEY (order_id) REFERENCES orders(order_id);

-- order_reviews → orders
ALTER TABLE order_reviews
ADD CONSTRAINT fk_reviews_orders FOREIGN KEY (order_id) REFERENCES orders(order_id);











