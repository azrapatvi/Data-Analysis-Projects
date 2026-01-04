-- =========================================================
-- Walmart Sales Data Analysis using SQL
-- =========================================================

-- Create and use the Walmart database
create database walmart_db;
use walmart_db;

-- View all records from the Walmart table
select * from walmart;

-- =========================================================
-- BASIC EXPLORATORY ANALYSIS
-- =========================================================

-- Total number of transactions
select count(*) from walmart;

-- distinct payment types
select distinct payment_method from walmart;

-- how many transactions happens in each payment method
select 
distinct payment_method,count(invoice_id) as total_transactions
from walmart
group by payment_method;

-- List all branches along with their cities
select distinct branch,city
from walmart;

-- Count total number of unique branches
select count(distinct branch) as branches
from walmart;

-- Find the maximum quantity sold in a single transaction
select max(quantity) from walmart;

-- Find the minimum quantity sold in a single transaction
select min(quantity) from walmart;

-- View all transactions ordered by quantity (highest first)
select * from walmart
order by quantity desc;


-- For each payment method, find:
-- 1) total number of transactions
-- 2) total quantity of items sold
select 
payment_method,count(invoice_id) as total_transactions,sum(quantity) as total_qty_sold
from walmart
group by payment_method;

-- Identify the highest-rated product category in each branch
-- using average rating and window function ranking
select branch,category,avg(rating) as avg_rating,rank() over (partition by branch order by avg(rating) desc) as ranked
from walmart
group by branch,category;

-- =========================================================
-- DATE HANDLING & BUSIEST DAY ANALYSIS
-- =========================================================

-- Check the structure of the table (date column is text)
DESCRIBE walmart; -- date is text

-- Preview date-related functions on the new_date column
SELECT 
    new_date,dayname(new_date),dayofweek(new_date),day(new_date)
from walmart;

-- Add a new DATE-type column to store cleaned dates
alter table walmart
add new_date date;

-- Disable safe updates to allow bulk update
SET SQL_SAFE_UPDATES = 0;

-- Convert text date into proper DATE format
UPDATE walmart
SET new_date = STR_TO_DATE(TRIM(`date`), '%d/%m/%y');

-- Re-enable safe updates
SET SQL_SAFE_UPDATES = 1;

select * from walmart;

-- Count transactions per branch per day
-- and rank days to identify busiest day per branch
select 
branch,dayname(new_date) as day_name,count(invoice_id) as count_of_transaction,
dense_rank() over (partition by branch order by count(invoice_id) desc) as ranked
from walmart
group by branch,day_name
order by count_of_transaction desc;

-- Alternative approach using CTE to fetch only the busiest day
with cte as(
	select branch,dayname(new_date) as day_name,count(invoice_id) as count_of_transaction
	from walmart
	group by branch,day_name
	order by count_of_transaction desc
)
select * from (

	select *,rank() over (partition by branch order by count_of_transaction desc) as ranked from cte

)t
where ranked=1;

-- Calculate total quantity sold for each payment method
select payment_method,sum(quantity) as no_of_qty_sold
from walmart
group by payment_method
order by no_of_qty_sold desc;

-- For each city and category:
-- calculate average, minimum, and maximum rating
select city,category,avg(rating) as avg_rating,min(rating) as min_rating,max(rating) as max_rating
 from walmart
 group by 1,2;
 
-- Calculate total profit per category
-- Profit formula: unit_price * quantity * profit_margin
-- Results are sorted from highest to lowest profit
 select category,round(sum(unit_price*quantity*profit_margin),2)as total_profit from walmart
 group by category
 order by total_profit desc;
 
-- Identify the preferred (most-used) payment method
-- for each branch using window functions
WITH cte AS (
    SELECT 
        branch,
        payment_method,
        COUNT(invoice_id) AS total_txtn
    FROM walmart
    GROUP BY branch, payment_method
)
SELECT *
FROM (
    SELECT *,
           RANK() OVER (
               PARTITION BY branch 
               ORDER BY total_txtn DESC
           ) AS ranked
    FROM cte
) t
where ranked=1;

-- Categorize transactions into Morning, Afternoon, Evening
-- based on transaction time
SELECT 
       CASE 
           WHEN TIME(time) >= '07:00:00' AND TIME(time) < '12:00:00' THEN 'Morning'
           WHEN TIME(time) >= '12:00:00' AND TIME(time) < '17:00:00' THEN 'Afternoon'
           ELSE 'Evening'
       END AS shift,
       count(*)
FROM walmart
group by 1;

-- Calculate total sales (profit-based) for each city
 select city,round(sum(unit_price*quantity*profit_margin),2) as total_sales from walmart
 group by city
 order by total_sales desc;
 
 -- Calculate total sales per year
 select year(new_date),round(sum(unit_price*quantity*profit_margin),2) as total_sales from walmart
 group by 1;
 
 