Create database Sql_Project_retail;


CREATE table  retail_sales 
(
         transactions_id Int Primary Key,
         sale_date Date,
         sale_time	Time,
         customer_id Int, 	
         gender Varchar(15),
         age   Int,
         category Varchar(15), 
         quantiy Int,
         price_per_unit Float, 
         cogs Float, 
        total_sale Float

);



Select * From retail_sales
Limit 10


select Count(*) 
from retail_sales

--- ------
#Identify Null values 

Select * From retail_sales
Where transactions_id is null


Select * From retail_sales
Where sale_date is null

Select * From retail_sales
Where sale_time is null



Select * from retail_sales
where 

  transactions_id Is null 
  Or
  Sale_date Is null 
  Or
  Sale_time Is null
  Or
  Gender Is null 
  Or 
  Category Is null
  Or
  quantiy Is null 
  Or 
  Cogs Is null
  Or
  total_sale Is null;


  Delete from retail_sales
  where 

  transactions_id Is null 
  Or
  Sale_date Is null 
  Or
  Sale_time Is null
  Or
  Gender Is null 
  Or 
  Category Is null
  Or
  quantiy Is null 
  Or 
  Cogs Is null
  Or
  total_sale Is null;


-- Step 1: Always preview first
SELECT * FROM retail_sales
WHERE transactions_id IS NULL OR sale_date IS NULL;

-- Step 2: Backup the table

CREATE TABLE retail_sales_backup AS SELECT * FROM retail_sales;

--- Data expolration 

--- how many sales we have 
Select count(*) total_sale From retail_sales

--- How Many Unique Customers we have 

Select Count (Distinct customer_id) as total_sale from retail_sales


Select Count (Distinct category) as total_sale from retail_sales

SELECT category, SUM(total_sale) AS revenue
FROM retail_sales
GROUP BY category
ORDER BY revenue DESC
LIMIT 3;


Select Distinct category From retail_sales

# Write a SQL query to retrieve all columns for sales made on '2022-11-05
Select * From 
retail_sales
where sale_date ='2022-11-05';

Select * From 
retail_sales
where sale_date ='2022-11-09';


#-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
Select
*
From retail_sales
Where category ='Clothing'
AND 
To_Char(Sale_date,'YYYY-MM')='2022-11'
AND
quantiy >= 4

#-- @3) Write a sql query to calculate the total sales (total Sales) for each Category.

Select 
category,
sum(total_sale) as net_sale,
count(*) as total_orders
From retail_sales
Group By category


Select
*
From retail_sales
Where category ='Electronics'
AND 
To_Char(Sale_date,'YYYY-MM')='2022-11'

(Q4) Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

Select 
Round (Avg(age)) as avg_age
from retail_sales
where category = 'Beauty'

