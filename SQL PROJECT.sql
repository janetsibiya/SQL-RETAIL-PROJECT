-- SQL RETAIL SALES ANALYSIS - P1
-- CREATE TABLE
CREATE TABLE RETAIL_SALES (
transactions_id INT PRIMARY KEY,
sale_date DATE,
sale_time TIME,
customer_id INT,
gender VARCHAR(25),
age INT,
category VARCHAR(25),
quantity INT,
price_per_unit FLOAT,
cogs FLOAT,
total_sale FLOAT
)
select * from RETAIL_SALES;

select COUNT(*) from RETAIL_SALES

--
select * from RETAIL_SALES
WHERE transactions_id is NULL

select * from RETAIL_SALES
WHERE sale_date is NULL

select * from RETAIL_SALES
WHERE 
transactions_id is NULL
or
sale_date is null
or
gender is null
or
category is null
or
quantity is null
or
price_per_unit is null
or
cogs is null
or
total_sale is null
;
-- DATA CLEANING
delete from RETAIL_SALES
WHERE 
transactions_id is NULL
or
sale_date is null
or
gender is null
or
category is null
or
quantity is null
or
price_per_unit is null
or
cogs is null
or
total_sale is null
;
-- DATA EXPLORATION
--HOW MANY SALES WE HAVE?
SELECT COUNT(*) AS total_sale from RETAIL_SALES

--HOW MANY UNIQUE CUSTOMERS WE HAVE?
SELECT COUNT(DISTINCT customer_id) as total_sale from RETAIL_SALES

-- DATA ANALYSIS & BUISNESS KEY PROBLEMS & ANSWERS

--Q1 WRITE A QUERY TO RETRIVE ALL COLUMNS FOR SALES MADE ON '2022-11-05'
SELECT * FROM RETAIL_SALES WHERE sale_date = '2022-11-05';

--Q2 WRITE A SQL QUERY TO RETRIVE ALL TRANSACTIONS WHERE THE CATEGORY IS 'CLOTHING' AND THE QUANTITY SOLD IS MORE THAN 10 IN THE MONTH OF NOV-2022
SELECT * from RETAIL_SALES WHERE 
category = 'clothing' 
and
quantity >10
and 
to_char(sale_date,'yyyy-mm') = '2022-11'

--END OF PROJECT
