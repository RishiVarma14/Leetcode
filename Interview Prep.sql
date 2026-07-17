CREATE DATABASE INTERVIEW_DB;


Use Interview_Db;

#Create the 'Products' table 
create table Product
(
   Product_id INT Primary Key,
   Store1 INT, -- Product Price in store 1
    Store2 INT, -- Product Price in store 2
     Store3 INT -- Product Price in store 3
);

#Insert Into data into the 'Products' table
Insert Into product
(Product_ID, Store1, Store2, Store3)
values
(0,90,105,110),
(1,null,87,85),
(2,null,30,40);

#Sample input 
Select *from Product;	

Select product_id, 'Store1' as store,store1 as price
from product
Where store1 is not null
Union
Select product_id, 'Store2' as store,store2 as price
from product
Where store1 is not null
union
Select product_id, 'Store3' as store,store3 as price
from product
Where store1 is not null
order by store asc;

SELECT product_id, 'store1' AS store, store1 AS price
FROM product
WHERE store1 IS NOT NULL
Union 
SELECT product_id, 'store2' AS store, store2 AS price
FROM product
WHERE store1 IS NOT NULL
Union 
SELECT product_id, 'store3' AS store, store3 AS price
FROM product
WHERE store1 IS NOT NULL

ORDER BY store;


Select 
   Product_id,
    Case
       when store1 is not null then 'store1'
       end as store,
       store1 as Price
       from product
       where store1 is not null;

Select 
 Product_id,
 case 
 when store2 is not null then 'store2'
       end as store,
       store2 as Price
       from product
       where store2 is not null;

Select 
 Product_id,
 case 
 when store3 is not null then 'store3'
       end as store,
       store3 as Price
       from product
       where store3 is not null;