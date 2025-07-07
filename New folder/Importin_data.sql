SET datestyle = 'ISO, DMY';

COPY cc_detail
FROM 'C:/PostgreSQL/import/credit_card.csv'
DELIMITER ',' 
CSV HEADER;


Copy cust_detail
FROM 'C:/PostgreSQL/import/customer.csv'
DELIMITER ','
CSV HEADER

SET datestyle = 'ISO, DMY';
Copy cc_detail
FROM 'C:/PostgreSQL/import/cc_add.csv'
DELIMITER ','
CSV HEADER

Copy cust_detail
FROM 'C:/PostgreSQL/import/cust_add.csv'
DELIMITER ','
CSV HEADER

